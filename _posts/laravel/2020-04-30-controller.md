---
layout: article
title: "[EP. 4] Laravel Controller 控制器"
time: 2020-04-30 20:50:00 +0800
tags: [Laravel, Tutorial]
render_with_liquid: false
---

References

1. [[1072-會議記錄] Router, View, Controller](https://docs.mcl.math.ncu.edu.tw/books/weekly-meeting/page/week-6-laravel)
2. [[Laravel 5.8] Controller](https://laravel.com/docs/5.8/controllers)
3. [[Laravel 5.8] Artisan Console](https://laravel.com/docs/5.8/artisan)

## Artisan Console: Laravel 工具包

> Artisan is the command-line interface included with Laravel. It provides a number of helpful commands that can assist you while you build your application.
> To view a list of all available Artisan commands, you may use the list command:
>
> ```bash
> php artisan list
> ```

因為大家的執行環境是在容器 (container) 當中，因此你需要透過 Docker 指令做媒介，進而控制並使用 Artisan 指令：

```bash
docker-compose exec php php artisan list
```

- 第一個 `php` 是容器的名稱
- 第二個 `php` 是程式名稱
- Docker-compose 對容器內下指令的 command 結構為：
  ```
  docker-compose exec [容器名稱] [你要下的指令]
  ```
- `docker-compose` 是依靠 `docker-compose.yml` 做事情，所以以後在其他地方下這類指令的時候要留意有沒有這個檔案

## Controller 控制器

- Controller 在設計上可以避免所有後台邏輯操作與 route 混在一起。
- Controller 規劃上可以把相關動作包裝成一個 PHP 的 class.
- 所有的 Controllers 會放在 `app/Http/Controllers` 底下。

> - 今天的目標是存取一個頁面後，他會提供現在的時間

### 透過 Artisan 建立控制器

```bash
php artisan make:controller [name of controller]
```

- 作為範例，`[name of controller]` 命名為 `DateController`
- 是時間的 `Date` 哦，不是約會的 `Date` 哦
- 然後他就會生成 `app/Http/Controllers/DateController.php`
- 如果你是 `docker-compose` 的使用者，前綴記得加

然後你會看到類似以下的檔案內容

```php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DateController extends Controller
{
    //
}
```

其中稍微留意：

- namespace 表命名空間，類似姓名中「姓氏」的概念
- 你的 class 名稱是 `DateController`，所以 class 的全名是 `App\Http\Controllers\DateController`
- `extends Controller` 表繼承 `Controller`，其全名為 `App\Http\Controllers\Controller`
- 花括號 `{}` 裡面可以放函數、變數等等的東西 (就是 class 的意思)

### 第一個 Controller 的函數：回傳系統時間

- 抓取系統時間可以使用 PHP 的 `time()` 函數 (此時你會得到 `int` 型態的資料，單位是秒)
- 使用 `date` 加上字串參數就會得到 `str` 型別的格式化結果
  - `date('Y-m-d', time()) // '2020-04-23'`

```php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DateController extends Controller
{
    public function index(Request $request)
    {
        $time = time();
        $now = date('Y-m-d H:i:s', $time);
        return view('pages.date', [
            'systemTime' => $now
        ]);
    }
}
```

並且建立對應的 View `pages.date`

```html
{{-- 簡單一點，這樣就好 XD --}} 系統時間: {{ $systemTime }}
```

最後建立從路由把請求導到 `DateController` 的 `index` 函數

```php
<?php

Route::get('date', 'DateController@index');
```

- `@` 前表 Controller 的 class 名稱，命名空間自動從 `App\Http\Controllers` 開始算
- `@` 後表該 controller 下的某個 public function

這個時候就會看到時間了，只是那個時間可能跟你的時鐘對不上。

#### 題外話：設定專案時區

- 回到專案根目錄，找到 `config` 資料夾，這個資料夾顧名思義就是放各種設定檔的地方
- 找到 `config/app.php` 當中，裡面有一個 KEY 是 `timezone`，代表專案時區，把他對應的值從 `UTC` 改成 `Asia/Taipei`，重新整理頁面就會變成台灣時區了。

### 透過 GET 方法傳遞參數

- 在 HTTP GET 方法中，我們可以透過 `?`, `=`, `&` 這些符號的組合去傳遞參數到後台去
- 舉例來說，如果我要傳遞 `name` 是 `Amy`, `age` 是 `20` 的話，我可以將原本網址改寫成
  ```
  http://140.115.26.xx:8080/date?name=Amy&age=20
  ```
- 而 controller 可以判斷他是否有抓到相關參數，並且做一些事情

  ```php
  // DateController

  public function index(Request $request)
  {
      if ($request->get('name')) {
          $name = $request->get('name');
      } else {
          $name = NULL;
      }
      // 跟下面寫法等價:
      // $name = $request->get('name') ? $request->get('name') : NULL;
      // 也跟下面寫法等價:
      // $name = $request->get('name') ?: NULL;

      $time = time();
      $now = date('Y-m-d H:i:s', $time);
      return view('pages.date', [
          'systemTime' => $now,
          'name' => $name
      ]);
  }
  ```

- 你可以在 View 中修改顯示方法，由此檢視 controller 出來的效果是否正確

  ```html
  {{-- pages.date --}} @if ($name) Hi, {{ $name }}! <br />
  @endif 系統時間: {{ $systemTime }}
  ```
