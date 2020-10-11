---
layout: article
title: "[EP. 7] Laravel Model Relationship 模型關聯"
time: 2020-05-21 20:50:00 +0800
tags: [Laravel, Tutorial]
render_with_liquid: false
key: 2020-05-21-relationship
---

References

1. https://laravel.com/docs/5.8/eloquent-relationships
2. https://en.wikipedia.org/wiki/Database_design

## 資料庫設計概論

- 資料庫設計 (Database Design) 是一門學問
- 決定要儲存什麼資料，並且設計資料內元素 (element) 之間的內部關係 (interrelationships)

### 內部關係

透過內部關係，可以將結構複雜的資料做妥善的規劃。

一個簡單的內部關係例子是這樣：

- `users`

| id  | name  |
| --- | ----- |
| 1   | Alice |
| 2   | Bob   |

- `check_records`

| id  | user_id | check_time | comment      |
| --- | ------- | ---------- | ------------ |
| 1   | 1       | 08:00      | Good morning |
| 2   | 2       | 08:05      | ( ˘•ω•˘ )    |
| 3   | 2       | 17:00      | (ﾉ>ω<)ﾉ      |
| 4   | 1       | 17:01      | Goodbye      |

從這個例子中，我們會看到他的內部關係是為

- **[belongsTo]** `check_records.user_id` 屬於 `users.id`
- **[hasMany]** 反過來說，`users.id` 可能在 `check_records.user_id` 中找的到，而且不只一個

這是一種**一對多**的案例。

我們可以再舉另一個案例：

- `users`

| id  | name  |
| --- | ----- |
| 1   | Alice |
| 2   | Bob   |

- `contacts`

| id  | user_id | phone      | email         | address |
| --- | ------- | ---------- | ------------- | ------- |
| 1   | 1       | 0912345678 | alice@mcl.ncu | G14 301 |
| 2   | 2       | 0987654321 | bob@mcl.ncu   | B09 402 |

從上表可以發現，因為資料概念上是紀錄使用者的聯繫資訊，所以他的內部關係為

- **[belongsTo]** `contacts.user_id` 屬於 `users.id`
- **[hasOne]** `users.id` 可能在 `contacts.user_id` 中找的到，但也就一筆

這個就是**一對一**的案例。

## Relationships

### 一對多 One to Many (以 `User` 與 `CheckRecord` 為例)

如果透過以上邏輯去操作的話，我們可以拼湊現有的知識去實作這些動作：

```php
<?php

namespace App\Http\Controllers;

use Auth;
use App\User;
use App\CheckRecord;
use Illuminate\Http\Request;

class CheckRecordController extends Controller
{
    public function get_belonging_user_name(CheckRecord $checkRecord)
    {
        $user_id = $checkRecord->user_id;
        $user = User::find($user_id); // find unique row by `id`

        return $user->name;
    }

    public function get_all_check_records()
    {
        $user_id = Auth::user()->id;
        $checkRecords = CheckRecord::whereUserId($user_id)->get();

        return $checkRecords;
    }
}
```

> #### 冷靜想一下上面的實作方法：
>
> - 想想每次要取資料的時候都要像上面這樣撈資料，實際上很麻煩！
> - 如果資料關係跨了三個資料表，甚至更多的時候，你的程式碼會變得很地獄。
> - 過了三個月再回來看，你會不知道你到底在寫什麼。(你可能連關聯欄位是什麼都忘了)

不過實際上對 `App\User` 和 `App\CheckRecord` 這兩個檔案處理後，可以簡化上面的流程：

```php
<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CheckRecord extends Model
{
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
        // [foreign_key] check_records.user_id
        // [other_key] users.id
    }
}
```

```php
<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    // ...

    public function checkRecords()
    {
        return $this->hasMany(CheckRecord::class, 'user_id', 'id');
        // [foreign_key] check_records.user_id
        // [local_key] users.id
    }
}
```

然後上面的動作便可直接等價於

```php
<?php

namespace App\Http\Controllers;

use Auth;
use App\User;
use App\CheckRecord;
use Illuminate\Http\Request;

class CheckRecordController extends Controller
{
    public function get_belonging_user_name(CheckRecord $checkRecord)
    {
        // $user_id = $checkRecord->id;
        // $user = User::find($user_id); // find unique raw by `id`
        // return $user->name;
        return $checkRecord->user->name;
    }

    public function get_all_check_records()
    {
        // $user_id = Auth::user()->id;
        // $checkRecords = CheckRecord::whereUserId($user_id)->get();
        // return $checkRecords;
        return Auth::user()->checkRecords;
    }
}
```

> 測試一下
>
> ```php
> Route::group(['middleware' => 'auth'], function () {
>     Route::get('check/{checkRecord}', 'CheckRecordController@get_belonging_user_name');
>     Route::get('userinfo', 'CheckRecordController@get_all_check_records');
> });
> ```
