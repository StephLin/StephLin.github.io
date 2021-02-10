---
layout: article
title: "VSCode 崛起觀察與擴充套件推薦"
categories:
  - vscode
tags:
  - vscode
  - extensions
  - insights
key: 2021-02-10-vscode-extensions
---

常說工欲善其事，必先利其器。對於程式設計師來說，一個好的編輯器肯定是能把程式寫得風生水起呢！談到該使用何種編輯器，這又是另一個戰場，想到幾年前筆者在挑選編輯器的時候，也是在不敗經典 Vim 與後起之秀 VSCode 之間掙扎了好一陣子。

不過今天先不說這些，我們倒是聊聊這個後起之秀 [VSCode (Visual Studio Code)](https://code.visualstudio.com/) 他的一些特點，以及就我的使用經驗有哪些推薦的擴充套件！d(`･∀･)b

![](https://user-images.githubusercontent.com/1487073/58344409-70473b80-7e0a-11e9-8570-b2efc6f8fa44.png){:.image--70.image}

<!-- more -->

## VSCode 崛起觀察

觀察了幾家文章[^clubhouse-pm-blog] [^medium-dev-genius-why-vscode]，結合自己的想法後，筆者認為 VSCode 的關鍵特色可以整理成以下五項：

[^clubhouse-pm-blog]: ["It's free", "it's open source" and 5 other reasons why VS Code is so popular with developers](https://clubhouse.io/blog/7-reasons-why-vs-code-is-so-popular/)
[^medium-dev-genius-why-vscode]: [The Reasons why you Must Use Visual Studio Code](https://medium.com/dev-genius/the-reasons-why-you-must-use-visual-studio-code-b522f946a849)

### 1. 好的開始：開源且免費

開源不只是趨勢，在實質意義上也有諸多好處。包括增加能見度、社群貢獻機制等等，筆者建議讀者可以參考一些網路上不錯的分析文章[^buzzorange-opensource] [^gvm-opensource] [^inside-opensource]。

[^buzzorange-opensource]: [從 Redhat 到 GitHub，開源軟體為什麼開始火了？](https://buzzorange.com/techorange/2019/01/16/open-sources-rule/)
[^gvm-opensource]: [成為世界上最強、最好的軟體公司：「開源」是唯一途徑](https://www.gvm.com.tw/article/33033)
[^inside-opensource]: [談開源精神：給一個舞台，我們一起改變社會](https://www.inside.com.tw/article/3864-coscup14)

談到 VSCode 開發團隊，Microsoft 在近年來心態轉變下，也逐漸成為擁抱開放原始碼的一員[^codertw-microsoft-opensource]：包括自行開發了許多知名的開源專案 (如 [VSCode](https://code.visualstudio.com/)、[TypeScript](https://www.typescriptlang.org/)、[Windows Terminal](https://github.com/microsoft/terminal) 等)、小部分開放一些過去屬於閉源的程式碼 (如 [winfile](https://github.com/microsoft/winfile))、甚至將開源程式碼巨頭 Linux 加入自家作業系統中[^microsoft-commandline-wsl2]等。

[^codertw-microsoft-opensource]: [擁抱開源，微軟是認真的，一個你不瞭解的微軟正在到來](https://codertw.com/%E7%A8%8B%E5%BC%8F%E8%AA%9E%E8%A8%80/36888/)
[^microsoft-commandline-wsl2]: [WSL 2 will be generally available in Windows 10, version 2004](https://devblogs.microsoft.com/commandline/wsl2-will-be-generally-available-in-windows-10-version-2004/)

<div class="hero quote">
  <div class="hero__content">
    <p>當本世紀初開放原始碼迅速擴大時，微軟是處在歷史上錯誤的一方。</p>
    <small>Microsoft 總裁暨首席法務長 Brad Smith (2020)</small>
  </div>
</div>

我們可以理解 Microsoft 這些舉動無疑是展現承認過去立場錯誤的決心[^bnext-microsoft-opensource] [^technews-microsoft-brad-smith]，儘管我們仍需要一些時間，觀察這些年的變化究竟能不能彌補在開源社區的名聲[^technews-microsoft-github-developers] [^inside-microsoft-github]，但至少 VSCode 是開源的 --- 依舊一定程度上提升了軟體自身聲量。

[^bnext-microsoft-opensource]: [微軟總裁坦承「過去錯了」！從批「開源是癌症」到熱情擁抱，見證軟體帝國霸業轉型史](https://www.bnext.com.tw/article/57737/microsoft-open-source-linux-history-wrong-statement)
[^technews-microsoft-brad-smith]: [如今擁抱開源，微軟總裁坦承過去選擇是錯的](https://technews.tw/2020/05/19/microsoft-brad-smith-says-company-was-on-the-wrong-side-of-history-regarding-linux/)
[^technews-microsoft-github-developers]: [微軟收購 GitHub 一週年，企業經營與開源社群的矛盾與衝突仍待解決](https://technews.tw/2019/06/05/one-year-anniversity-of-github-it-is-still-quite-calm-but-developers-still-have-concerns/)
[^inside-microsoft-github]: [買了人卻買不了心！收購 GitHub 兩年後，微軟仍在被開發者們打臉](https://www.inside.com.tw/article/21745-microsofts-github-has-become-magnet-for-thorny-issues-like-riaa)

### 2. 高可靠性與高支援度：活躍的社群

承襲著開源軟體的好處，開發端與用戶端的界線變得模糊：漏洞回報以及發展議題等諸多對話，大家都可以在同一個平台上一邊看著程式碼一邊討論，即使是菜鳥 (如筆者) 也可以當一個稱職的吃瓜群眾，在一旁看著神仙們打架[^vscode-github-issues] (?)。

[^vscode-github-issues]: [Issues · microsoft/vscode · GitHub](https://github.com/microsoft/vscode/issues)

> VSCode 開發團隊同時也會[使用 GitHub Issue 作為開發管理用](https://github.com/microsoft/vscode/issues)，閒來無事也可以上去看一下他們最新的開發進展。

社群的活躍與否可以帶來許多正面效應，而對於一個純粹的使用者來說，活躍的社群所帶來的直接好處，在於你很難成為第一個踩坑的人 XD

### 3. 高度客製化：豐富的擴充套件

活躍的社群意味著豐富的開發量能，許多客製化且方便的額外功能在這個社群中如雨後春筍般冒出。我們可以理解每個程式設計師在開發時有不同的需求，例如程式語言、輸入方法、乃至於開發環境 (容器整合與遠端開發) 等，而擴充套件正是可以讓開發者自由選配適合的套件，藉此讓編輯器更接近你所喜歡的模樣。在下一章筆者也會列舉個人珍藏的套件推薦集。

在 VSCode 誕生之前，我們知道這個世界上還有其他許多優秀的編輯器或整合開發工具如 Vim、Sublime Text 3、Notepad++、Atom、PyCharm、Eclipse 等等，只是筆者認為部分編輯器在語言特製化與功能多樣化之間的取捨有些失衡，而 VSCode 一定程度上克服了這個問題。

> 然而 VSCode 在定位上依舊是編輯器，因此功能多樣化這點還是他的相對強項。

### 4. 開發門檻低：基於 TypeScript 支撐的編輯器

只要有足夠的時間與精力，原則來講上述問題都可以在任何一個編輯器上解決，但為何是 VSCode 的一個原因，筆者認為是 VSCode 選擇了 TypeScript 作為開發語言，大幅降低了套件開發的難度 (想想到底有多少大神會寫 Vim script ...)，同時也借用了 Node.js 廣大的社群力量，直接站在巨人的肩膀上變成另外一個巨人。

> 筆者雖然沒有專精於 JavaScript，但也一時興起開發了個簡單的小套件 [VSCode Tmux Keybinding](https://marketplace.visualstudio.com/items?itemName=stephlin.vscode-tmux-keybinding)

同時逐漸進步的原生 API 也可以幫助開發者可以藉此實現更多的想法[^medium-hungys-why-vscode] [^vscode-github-api-process]，在社群中蔚為一正能量循環。

[^medium-hungys-why-vscode]: [為什麼我從 Sublime Text 跳槽 Visual Studio Code？](https://medium.com/hungys-blog/why-i-switched-from-sublime-to-vscode-ea030b3ff1d9)
[^vscode-github-api-process]: [Extension API process · microsoft/vscode Wiki · GitHub](https://github.com/Microsoft/vscode/wiki/Extension-API-process)

### 5. 內建調試框架：與調試工具的高度結合

雖然老實說筆者平常習慣使用內建終端機直接執行程式碼，但在一些複雜的情境下依然需要仰賴調試工具 (包括設定條件中斷點、查閱變數等等)，VSCode 直接將相關功能整合到其內建平台中，這件事情相比需要額外安裝擴充套件的其他編輯器來說，VSCode 可以提供開發者相對較無縫的使用者體驗[^medium-hungys-why-vscode]。

### 其他特色

當然 VSCode 在其他部分還有許多特色，除了筆者疏漏外，比如內建 Git 版本控制功能，但沒有在這邊列舉的一部分原因，在於筆者認為搭配擴充套件的催化下他們會有更好的表現，故將一些特色納到下一個章節一併介紹！

## VSCode 擴充套件推薦

接下來筆者將針對不同的使用情境推薦自己現役的額外套件，但因為數量偏多 (筆者本身也是裝了超過 50 個擴充套件的偏重度使用者 XD)，故詳細的說明筆者直接附上介紹文章連結供有興趣的讀者參考。

### 設定同步工具

#### [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)

對於可能在複數電腦上開發的人來說絕對是福音！設定一次，同步至雲端後，即可在其他電腦上一鍵更新。相關介紹文請參考[^medium-les-lee-settings-sync] [^medium-shu-shan-huang-settings-sync]。

[^medium-les-lee-settings-sync]: [[VSCode] 使用 Settings Sync 同步 VScode 的擴充功能與各項設定](https://medium.com/%E4%B8%80%E5%80%8B%E5%B0%8F%E5%B0%8F%E5%B7%A5%E7%A8%8B%E5%B8%AB%E7%9A%84%E9%9A%A8%E6%89%8B%E7%AD%86%E8%A8%98/vscode-%E4%BD%BF%E7%94%A8-settings-sync-%E5%90%8C%E6%AD%A5-vscode-%E7%9A%84%E6%93%B4%E5%85%85%E5%8A%9F%E8%83%BD%E8%88%87%E5%90%84%E9%A0%85%E8%A8%AD%E5%AE%9A-bb24a8d141eb)
[^medium-shu-shan-huang-settings-sync]: [VS Code Settings Sync (上傳設定)](https://medium.com/susan-blog/vs-code-settings-sync-%E4%B8%8A%E5%82%B3%E8%A8%AD%E5%AE%9A-4d22deba2185)

> 最近 (2021.02.04) 發現 VSCode 官方似乎想直接在原生實現這個功能呢[^vscode-docs-settings-sync]。

[^vscode-docs-settings-sync]: [Settings Sync in Visual Studio Code](https://code.visualstudio.com/docs/editor/settings-sync)

### 編輯區塊通用快捷鍵

#### [Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)

VSCode 還是 Vim？兩個都要！在 VSCode 上面也可以讓游標飛呢！介紹文請參考[^medium-larry-lu-vscode]。

[^medium-larry-lu-vscode]: [VSCode 如何提高我的寫扣效率](https://medium.com/susan-blog/vs-code-settings-sync-%E4%B8%8A%E5%82%B3%E8%A8%AD%E5%AE%9A-4d22deba2185)

> 到目前為止 (2021.02.10)，部分指令跟功能在使用上還是有一些小問題，但整體上還是不錯的。

#### [Sublime Text Keymap and Settings Importer](https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings)

如果曾經使用過 Sublime Text 3 的話應該會很喜歡這個套件，他將一些好用的快捷鍵整合到 VSCode 當中。重點是他可以跟 [VSCodeVim](#vim) 共用！

### 終端機通用快捷鍵

#### [Tmux Keybinding](https://marketplace.visualstudio.com/items?itemName=stephlin.vscode-tmux-keybinding)

進入筆者無恥的推銷時間 (?)，如果你曾經使用過終端機神器 tmux[^medium-larry-lu-tmux] 並且信仰著他，希望你會喜歡這個套件！

[^medium-larry-lu-tmux]: [終端機 session 管理神器 — tmux](https://larrylu.blog/tmux-33a24e595fbc)

> 不嫌棄的話也歡迎[到 GitHub Repo 給個星星](https://github.com/StephLin/vscode-tmux-keybinding)唷 (๑•̀ㅂ•́)و✧

### Python 相關

#### [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)

官方提供的同名套件，好用到不裝會對不起自己！讀者可以參考官方文件[^vscode-python]或是第三方介紹文[^oranwind-vscode-python]。

[^vscode-python]: [Python in Visual Studio Code](https://code.visualstudio.com/docs/languages/python)
[^oranwind-vscode-python]: [[Python] 使用 Visual Studio Code 作為開發環境](https://oranwind.org/python-vscode/)

#### [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)

2020 年 6 月官方推出的非開源語言伺服器 (Language Server Protocol, LSP)，宣稱在型態解析與語法支援上可以提供更快速且強大的幫助。相關文章可以參考官方部落格[^microsoft-devblogs-pylance]或是第三方報導[^ithome-pylance-20200701] [^ithome-pylance-20200926]。

[^microsoft-devblogs-pylance]: [Announcing Pylance: Fast, feature-rich language support for Python in Visual Studio Code](https://devblogs.microsoft.com/python/announcing-pylance-fast-feature-rich-language-support-for-python-in-visual-studio-code/)
[^ithome-pylance-20200701]: [微軟在 VS Code 上推出新的 Python 語言伺服器 Pylance](https://www.ithome.com.tw/news/138536)
[^ithome-pylance-20200926]: [微軟更新 VS Code Python 語言伺服器，強化程式碼可讀性](https://www.ithome.com.tw/news/140209)

#### [Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring)

針對 Python 程式碼文件的片段生成器，可以一鍵生成各種規格的架構。

> - 目前 VSCode 對於 Docstring 的渲染還不是很理想[^vscode-github-issue-38]，前陣子開發團隊有提到他們打算在 Pylance 上針對這部分做一些調整，使得 Google style 以及 Numpy style 的渲染會變好一些。
> - 若近期想使用且希望能讓顯示好一些，可以先考慮使用 Numpy style `"autoDocstring.docstringFormat": "numpy"`

[^vscode-github-issue-38]: [Improved docstring display support · Issue #38 · microsoft/vscode-python](https://github.com/microsoft/vscode-python/issues/38)
