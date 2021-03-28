---
layout: article
title: "透過 Jekyll 與 GitHub Pages 經營個人網站"
categories:
  - writing
tags:
  - jekyll
  - github-pages
  - insights
key: 2021-03-28-jekyll-github-pages
---

對於資訊工程師或者相關領域的人來說，「寫作」實際上是一種不管在分享資訊、統整知識、抑或形塑個人形象等等方面都有很多的好處，而若你本身對於網頁與架站具有一定程度的熟悉度，你也可以嘗試客製化自己的網頁，進而與其他人的網站做出差異性。

GitHub Pages 是一個支援靜態網頁的免費架站平台，提供 1 GB 的儲存空間以及免費且附 SSL 憑證的域名，因此如果你本身有在使用 GitHub 的話，實不失一個無償架站的好選項！本文將介紹透過 Jekyll 使用 GitHub Pages 的方式，以及一些網站主題的搜尋清單。

<!-- more -->

## 為什麼要寫文章？

我連用程式語言的時間都不夠了，還要用自然語言寫文章？

網路上不管在 Medium 或是個人平台上，也有不少人在探討寫作的好處。雖然這邊有一個小小的盲點是：那些寫文章的人在撰寫的同時就是在做這件事情---意思是說，我們似乎缺少了一些「不常寫文章的人」的意見，這邊不妨就筆者過去學習的經驗去嘗試闡述「寫作」的過程帶來的影響。

筆者從大一開始正式接觸資訊科學，並在大三大四兩年擔任系上的網管，並在以每週固定一個小時為週期的工讀生會議中，開始將過往的所學所知寫成文件，並與同儕及學弟妹分享在這個領域上的各種資訊。

分享資訊的傳統在過去這個工讀團隊中實際上一直存在，然而多數都是採取口頭傳授的方式進行，以至於許多知識在傳遞過程中難以被保存，並借鑑 Amazon 的開會方法[^storm-amazon-meeting-style][^bnext-amazon-meeting-style]，故筆者決定採用文件的形式記錄開會中要講的事情，並且在會議中直接透過文件闡述，而當時筆者並沒有固定寫作的習慣。

[^storm-amazon-meeting-style]: [在亞馬遜，開會禁用 PPT！來自貝佐斯的怒吼：「根本搞不清楚在講什麼」- 風傳媒](https://www.storm.mg/article/1734921?page=1)
[^bnext-amazon-meeting-style]: [禁止開會用 PPT！貝佐斯為何在會議中要求所有人靜坐 30 分鐘？ - 數位時代](https://www.bnext.com.tw/article/51020/amazon-use-memo-to-replace-ppt-in-meeting)

![](/assets/images/jekyll-github-pages/mcl-meeting-sso.png){:.image--md--80}
<small style="color: gray">當時筆者撰寫的內部會議文件，當時講述的內容是 SSO.</small>

倒是有個題外話，這個方案在實踐初期仍是一個草創階段，不諱言地，早期寫得實在有點爛，儘管畢業後在碩士班至今為止依舊維持這個形式，在每週進度報告中皆採取這個套路，但這個形式在寫作本身以及闡述上都有著更高的要求，因此至今筆者偶爾在報告時還是會發生「聽眾不知道講者到底在講什麼鬼東西」的窘境。

> 這也可能是筆者比較廢啦抱歉。

不過在筆者每週整理這些文件的過程中，會發現自己也在重新審視過去所學習的東西：首先找資料的過程中，不少會發現以前自己可能誤解的資訊；而在統整資訊的過程中，你會開始讓過去的所學與現在的資訊產生連結，並且讓整件事情是有連貫性的。最後就彷彿一個說書人在講故事般，在闡述的過程中讓各種元素之間的關聯性變強，進而將這些知識內化成一幅幅畫面，每每談起總能信手拈來。

這個現象實際上也在不少文章中有談到[^medium-huli-why-blogging][^medium-huli-blog][^dotblog-why-engineer-blogging][^yehjunwei-why-engineer-blogging]，而綜合來說這些特點到最後都會回到個人身上：寫作文章的本身不只是讓讀者受益，真正得到最大幫助的實際上是作者本身！這也是筆者認為除了興趣之外，從理性層面來看工程師寫文章最重要、最有感的正面效益。

[^medium-huli-why-blogging]: [每一篇心得都有價值——為什麼初學者才更應該要寫心得筆記 - by Huli - Huli’s blog - Medium](https://medium.com/hulis-blog/why-blogging-ab77fd8c6ffa)
[^medium-huli-blog]: [我為什麼寫部落格，以及部落格帶給我的影響. 前幾天有個朋友問了我一個問題： - by Huli - Medium](https://hulitw.medium.com/blog-e7a23a74ae2b)
[^dotblog-why-engineer-blogging]: [我為什麼鼓勵工程師寫 blog - In 91 - 點部落](https://dotblogs.com.tw/hatelove/2017/03/26/why-engineers-should-keep-blogging)
[^yehjunwei-why-engineer-blogging]: [為何軟體工程師應該開始寫部落格 - Tony Yeh](https://www.yehjunwei.com/773/%E7%82%BA%E4%BD%95%E8%BB%9F%E9%AB%94%E5%B7%A5%E7%A8%8B%E5%B8%AB%E6%87%89%E8%A9%B2%E9%96%8B%E5%A7%8B%E5%AF%AB%E9%83%A8%E8%90%BD%E6%A0%BCblog)

## 透過 Jekyll 架設網站

在前言中提到，GitHub Pages 本質上提供靜態網站，因此任何途徑的終點都是靜態 HTML 頁面，而 Jekyll 是一個幫助你有組織地建構網頁的工具。

完整的安裝流程基本上還是建議讀者直接參考 [Jekyll 官方安裝說明文件](https://jekyllrb.com/docs/installation/)，這邊筆者僅說明針對 Ubuntu 系統的安裝過程。

### Step 1. 安裝 Ruby 及其套件管理器 RubyGems

總言之，直接上指令：

```bash
sudo apt-get install ruby-full build-essential zlib1g-dev
```

安裝指令成功後，接著將相關環境變數加到自己的環境設定檔：

```bash
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### Step 2. 安裝 Jekyll 與 Bundler 套件

透過 Step 1 取得的套件管理器 `gem` 安裝套件，指令如下：

```bash
gem install jekyll bunder
```

### Step 3. 初始化 Jekyll 專案

到這一步後基本上有兩條道路可以選：第一種是建立 Jekyll 預設環境，然後再自行安排 CSS、JavaScript 等個人化設計；第二種則是 clone 別人已經編排好的框架，之後再視個人狀況做些許微調。

#### Option 1. 建立 Jekyll 預設環境

假設專案根目錄為 `$YOUR_GITHUB_NAME.github.com`，你可以透過以下指令生成基本環境：

```bash
jekyll new $YOUR_GITHUB_NAME.github.com
```

<i class="fas fa-info-circle"></i> 將專案根目錄取為 `$YOUR_GITHUB_NAME.github.com` 的目的在於之後 push 到 GitHub 時，你需要遵守 GitHub Pages 的命名規則。
{:.info}

接著在根目錄執行以下指令初始化，並啟動網站：

```bash
cd $YOUR_GITHUB_NAME.github.com
bundle install
bundle exec jekyll serve --livereload
```

<i class="fas fa-info-circle"></i> `--livereload` 指令的目的在於當網頁資料有變動的時候，伺服器會自動重新編譯，致使寫作者不需要手動重新啟動服務 (但如果是設定檔相關的更動仍須自行重啟)，留意自動刷新功能需要瀏覽器[擴充功能](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei)支援。
{:.info}

> 因為執行指令沒有很簡潔，因此筆者在使用的時候會在根目錄另外新增檔案 `Makefile`，內容為
>
> ```
> .PHONY: serve
> serve:
>     bundle exec jekyll serve --livereload
> ```
>
> 如此一來便可透過指令 `make serve` 取代上述指令。

此時在 localhost:4000 即可看到具備基礎功能的網站！

![](/assets/images/jekyll-github-pages/example-blog-demo.png){:.image--md--80}
<small style="color: gray">範例網站首頁</small>

#### Option 2. Clone 別人已經編排好的框架

筆者提供以下兩個地方可以尋找不錯的 Jekyll 主題：

- [http://jekyllthemes.org/](http://jekyllthemes.org)
- [https://github.com/topics/jekyll-theme](https://github.com/topics/jekyll-theme)

接著以 [TeXt Theme](https://github.com/kitian616/jekyll-TeXt-theme) 為例，首先先透過 git 指令將原始碼載下來：

```bash
git clone https://github.com/kitian616/jekyll-TeXt-theme $YOUR_GITHUB_NAME.github.com
```

接下來同第一種路線，在根目錄執行以下指令啟動網站：

```bash
cd $YOUR_GITHUB_NAME.github.com
bundle exec jekyll serve --livereload
```

此時在 localhost:4000 即可看到網站！

### Step 4. 寫文章

我們快速理解一下 Jekyll 網站專案的資料夾架構：

```
.
├── 404.html
├── about.markdown
├── _config.yml
├── Gemfile
├── Gemfile.lock
├── index.markdown
└── _posts
```

其中 `_config.yml` 是網站環境設定檔，關於網站名稱、環境變數、乃至於 Markdown 語法設定細節都可以在這裡調整，而基本上文章都會放在 `_posts` 目錄底下，並且原生支援 Markdown 基本語法。

我們嘗試新增一個文章檔案 `_posts/2021-01-01-happy-new-year.md`，內容為

```
---
layout: post
title: "Happy New Year"
date: 2021-01-01
categories:
  - jekyll
  - update
tags:
  - new-year
---

Happy new year! Hello 2021!
```

<i class="fas fa-info-circle"></i> `categories` 與 `tags` 屬性可以幫助你將文章進行分類，至於分類的呈現手法則要看不同主題的設計方式。
{:.info}

此時在網站上你就可以看到以下結果：

![](/assets/images/jekyll-github-pages/new-post-toc.png){:.image--md--50}![](/assets/images/jekyll-github-pages/new-post-content.png){:.image--md--50}
<small style="color: gray">範例文章結果</small>

至此便完成寫作文章的最基本流程。最後我們將討論如何將網站發布到 GitHub Pages 作為公開網誌使用。

## GitHub Pages

GitHub Pages 基本上依賴於 git repository，因此你不只需要一個 GitHub 帳號，也會需要一點 git 的基本概念。

對於 Option 1 的使用者，你會需要初始化 git 專案環境；而對於 Option 2 的使用者，則需要更改或新增 remote 對象。

而 GitHub Pages 默認倉儲名稱為 `$YOUR_GITHUB_NAME.github.com` 為 GitHub Pages 的目標倉儲，因此在命名上必須遵守這個規則，否則 GitHub Pages 相關程序不會被觸發。

<i class="fas fa-info-circle"></i> 在原理上被觸發的程序為 GitHub Actions (CI/CD)，會經歷 Build 與 Deploy 這兩個步驟。
{:.info}

![](/assets/images/jekyll-github-pages/github-actions.png){:.image--md--80}
<small style="color: gray">觸發 GitHub Actions 之視覺化效果，要看到勾勾才代表執行成功。</small>

一旦順利執行，此時前往以下網址 `https://$YOUR_GITHUB_NAME.github.io` 便可看到你在 GitHub Pages 的個人網站。

## 結語

每個人的寫作歷程不盡相同，因此獲得的感想可能因人而異。若讀者認同寫作的重要性，並且對 Markdown 與網頁有一定了解的話，推薦你使用 GitHub Pages 作為工程師部落客旅程的起點！
