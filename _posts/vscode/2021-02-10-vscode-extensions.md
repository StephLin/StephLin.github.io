---
layout: article
title: "VSCode 崛起觀察與擴充套件推薦"
categories:
  - vscode
tags:
  - vscode
  - extensions
  - insights
  - preview
key: 2021-02-10-vscode-extensions
---

<style>
h4::before {
  content: "● ";
}
</style>

常說工欲善其事，必先利其器。對於程式設計師來說，一個好的編輯器肯定是能把程式寫得風生水起呢！談到該使用何種編輯器，這又是另一個戰場，想到幾年前筆者在挑選編輯器的時候，也是在不敗經典 Vim 與後起之秀 VSCode 之間掙扎了好一陣子。

不過今天先不說這些，我們倒是聊聊這個後起之秀 [VSCode (Visual Studio Code)](https://code.visualstudio.com/) 他的一些特點，以及就我的使用經驗有哪些推薦的擴充套件！d(`･∀･)b

![](https://user-images.githubusercontent.com/1487073/58344409-70473b80-7e0a-11e9-8570-b2efc6f8fa44.png){:.image--70.image}

> Image Credit: VSCode

<!-- more -->

## VSCode 崛起觀察

觀察了幾家文章[^clubhouse-pm-blog][^medium-dev-genius-why-vscode]，結合自己的想法後，筆者認為 VSCode 的關鍵特色可以整理成以下五項：

[^clubhouse-pm-blog]: ["It's free", "it's open source" and 5 other reasons why VS Code is so popular with developers](https://clubhouse.io/blog/7-reasons-why-vs-code-is-so-popular/)
[^medium-dev-genius-why-vscode]: [The Reasons why you Must Use Visual Studio Code](https://medium.com/dev-genius/the-reasons-why-you-must-use-visual-studio-code-b522f946a849)

### 1. 好的開始：開源且免費

開源不只是趨勢，在實質意義上也有諸多好處。包括增加能見度、社群貢獻機制等等，筆者建議讀者可以參考一些網路上不錯的分析文章[^buzzorange-opensource][^gvm-opensource][^inside-opensource]。

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

我們可以理解 Microsoft 這些舉動無疑是展現承認過去立場錯誤的決心[^bnext-microsoft-opensource][^technews-microsoft-brad-smith]，儘管我們仍需要一些時間，觀察這些年的變化究竟能不能彌補在開源社區的名聲[^technews-microsoft-github-developers][^inside-microsoft-github]，但至少 VSCode 是開源的 --- 依舊一定程度上提升了軟體自身聲量。

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

同時逐漸進步的原生 API 也可以幫助開發者可以藉此實現更多的想法[^medium-hungys-why-vscode][^vscode-github-api-process]，在社群中蔚為一正能量循環。

[^medium-hungys-why-vscode]: [為什麼我從 Sublime Text 跳槽 Visual Studio Code？](https://medium.com/hungys-blog/why-i-switched-from-sublime-to-vscode-ea030b3ff1d9)
[^vscode-github-api-process]: [Extension API process · microsoft/vscode Wiki · GitHub](https://github.com/Microsoft/vscode/wiki/Extension-API-process)

### 5. 內建調試框架：與調試工具的高度結合

雖然老實說筆者平常習慣使用內建終端機直接執行程式碼，但在一些複雜的情境下依然需要仰賴調試工具 (包括設定條件中斷點、查閱變數等等)，VSCode 直接將相關功能整合到其內建平台中，這件事情相比需要額外安裝擴充套件的其他編輯器來說，VSCode 可以提供開發者相對較無縫的使用者體驗[^medium-hungys-why-vscode]。

### 其他特色

當然 VSCode 在其他部分還有許多特色，除了筆者疏漏外，比如內建 Git 版本控制功能，但沒有在這邊列舉的一部分原因，在於筆者認為搭配擴充套件的催化下他們會有更好的表現，故將一些特色納到下一個章節一併介紹！

## VSCode 擴充套件推薦

接下來筆者將針對不同的使用情境推薦自己現役的額外套件，但因為數量偏多 (筆者本身也是擴充套件的偏重度使用者 XD)，故僅列出套件以及一些簡述，供有興趣的讀者參考。

### 設定同步工具

#### [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)

對於可能在複數電腦上開發的人來說絕對是福音！設定一次，同步至雲端後，即可在其他電腦上一鍵更新。

> 最近 (2021.02.04) 發現 VSCode 官方似乎打算直接在原生實現這個功能呢[^vscode-docs-settings-sync]。

[^vscode-docs-settings-sync]: [Settings Sync in Visual Studio Code](https://code.visualstudio.com/docs/editor/settings-sync)

### 編輯區塊通用擴充功能

#### [Vim (VSCodeVim)](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)

VSCode 還是 Vim？兩個都要！在 VSCode 上面也可以讓游標飛呢！

> 到目前為止 (2021.02.10)，部分指令跟功能在使用上還是有一些小問題，但整體上還是不錯的。

#### [Sublime Text Keymap and Settings Importer](https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings)

如果曾經使用過 Sublime Text 3 的話應該會很喜歡這個套件，他將一些好用的快捷鍵整合到 VSCode 當中。重點是他可以跟 [VSCodeVim](#vim-vscodevim) 共用！

#### [Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)

當大量的括號讓你眼花撩亂的時候，這時候你需要一個工具幫你把那些東西上色。這個套件可以幫你做到這件事情。

#### [Auto Hide](https://marketplace.visualstudio.com/items?itemName=sirmspencer.vscode-autohide)

實際上也是筆者以前使用 Vim nerdtree[^github-nerdtree] 時養成的壞習慣 (?)，可以在你編輯程式碼的時候自動把 Side Bar 隱藏起來。

[^github-nerdtree]: [GitHub - preservim/nerdtree: A tree explorer plugin for vim](https://github.com/preservim/nerdtree)

### 終端機通用快捷鍵

#### [Tmux Keybinding](https://marketplace.visualstudio.com/items?itemName=stephlin.vscode-tmux-keybinding)

進入筆者無恥的推銷時間 (?)，如果你曾經使用過終端機神器 tmux[^medium-larry-lu-tmux] 並且信仰著他，希望你會喜歡這個套件！

[^medium-larry-lu-tmux]: [終端機 session 管理神器 — tmux](https://larrylu.blog/tmux-33a24e595fbc)

> 不嫌棄的話也歡迎[到 GitHub Repo 給個星星](https://github.com/StephLin/vscode-tmux-keybinding)唷 (๑•̀ㅂ•́)و✧

### Git 擴充

實際上 VSCode 本身內建 Git 功能，可以實現比如 `commit`、`push`、`pull`、`merge` 等常見操作，而一些擴充套件可以讓功能更完備。

<i class="fas fa-info-circle"></i> 若不熟悉 Git 的讀者可參考猴子系列[^backlog-git]，寫得滿好的。
{:.info}

[^backlog-git]: [連猴子都能懂的 Git 入門指南](https://backlog.com/git-tutorial/tw/)

#### [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)

把 Git 的更多資訊直接呈現在程式碼當中，可以藉此更快速地調閱相關資訊。

#### [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)

將 Git 開發過程直接視覺化成圖形式，並且可以直接在這個圖上面執行一些 Git 操作。

### 遠端開發 / 遠端協作

#### [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

微軟自家推出的遠端開發套組，內含 SSH、Container、以及 WSL 三種遠端方法，在家在宿舍也能遠端無痛開發。

> 在 1.52 (Nov. 2020) 版新增了其中一個有感功能是會自動做 port forwarding[^vscode-release-note-1-52]，不過經筆者實測後發現 SSH 遠端對由 Docker 驅動的服務不會自動轉發。

[^vscode-release-note-1-52]: [Visual Studio Code November 2020 (Version 1.52)](https://code.visualstudio.com/updates/v1_52)

#### [Remote X11 (SSH)](https://marketplace.visualstudio.com/items?itemName=spadin.remote-x11-ssh)

若使用遠端開發 (SSH) 有使用 GUI 需求的話，這個套件可以幫忙把必要環境變數設定好。

#### [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)

遠端協作或者遠端指導的必備工具！可以讓其他人透過網路存取你正在操作的 workspace。

> VSCode 團隊目前正計畫將 Live Share 延伸到自家 Notebook 平台上，若真的實現了應該會是一個創舉，筆者滿期待的[^vscode-github-liveshare-notebook]！

[^vscode-github-liveshare-notebook]: [API gaps to support Liveshare in Notebook · Issue #102503 · microsoft/vscode · GitHub](https://github.com/microsoft/vscode/issues/102503)

### Python 相關

#### [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)

官方提供的同名套件，好用到不裝會對不起自己！讀者可以參考官方文件[^vscode-python]或是第三方介紹文[^oranwind-vscode-python]。

[^vscode-python]: [Python in Visual Studio Code](https://code.visualstudio.com/docs/languages/python)
[^oranwind-vscode-python]: [[Python] 使用 Visual Studio Code 作為開發環境](https://oranwind.org/python-vscode/)

#### [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)

2020 年 6 月官方推出的非開源語言伺服器 (Language Server Protocol, LSP)，宣稱在型態解析與語法支援上可以提供更快速且強大的幫助[^microsoft-devblogs-pylance][^ithome-pylance-20200701][^ithome-pylance-20200926]。

[^microsoft-devblogs-pylance]: [Announcing Pylance: Fast, feature-rich language support for Python in Visual Studio Code](https://devblogs.microsoft.com/python/announcing-pylance-fast-feature-rich-language-support-for-python-in-visual-studio-code/)
[^ithome-pylance-20200701]: [微軟在 VS Code 上推出新的 Python 語言伺服器 Pylance](https://www.ithome.com.tw/news/138536)
[^ithome-pylance-20200926]: [微軟更新 VS Code Python 語言伺服器，強化程式碼可讀性](https://www.ithome.com.tw/news/140209)

#### [Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring)

針對 Python 程式碼文件的片段生成器，可以一鍵生成各種規格的架構。

> - 目前 VSCode 對於 Docstring 的渲染還不是很理想[^vscode-github-issue-38]，前陣子開發團隊有提到他們打算在 Pylance 上針對這部分做一些調整，使得 Google style 以及 Numpy style 的渲染會變好一些。
> - 若近期想使用且希望能讓顯示好一些，可以先考慮使用 Numpy style `"autoDocstring.docstringFormat": "numpy"`

[^vscode-github-issue-38]: [Improved docstring display support · Issue #38 · microsoft/vscode-python](https://github.com/microsoft/vscode-python/issues/38)

### C/C++ 相關

#### [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)

官方推出的同名套件，可以支援程式碼追蹤、補全、以及偵錯等等功能。

#### [CMake Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools)

官方推出的 CMake 工具，可以提供使用 cmake 的專案更完整的支援，筆者通常也會伴著 [C/C++](#cc) 一起使用。

### JavaScript / TypeScript 相關

基於先天優勢，這類語言基本上不太需要裝擴充套件，功能就夠豐富了。不過還是有一些懶人套件可以幫助提升開發效率。

> 然筆者針對 Vue.js 等前端框架的開發經驗較少，故相關的套件建議就沒有列出來。

#### [prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

程式碼美化工具，可以直接免除幫程式碼排版的麻煩。實際上他也支援 HTML、CSS、JSON、Markdown 等多種語言。

#### [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)

針對 JavaScript 專案的正規化工具，特別在團隊開發時可以協助維持一貫的程式碼風格[^wcc723-vscode-eslint]。

[^wcc723-vscode-eslint]: [在 VSCode 啟用程式碼規範工具 (ESLint)](https://wcc723.github.io/tool/2017/11/09/coding-style/)

### Markdown 相關

#### [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)

豐富的 Markdown 擴充功能，包括即時預覽、轉存成 HTML 等複數功能。

#### [Github Markdown Preview](https://marketplace.visualstudio.com/items?itemName=bierner.github-markdown-preview)

針對 GitHub Markdown 樣式的套件組，可以讓上述套件在預覽的時候盡量跟網頁上的樣式一致。

### 其他

#### [licenser](https://marketplace.visualstudio.com/items?itemName=ymotongpoo.licenser)

協助將授權許可文件以及標頭置入到專案中，本身內建多種開放授權專案以及支援超多種語言。

#### [ROS](https://marketplace.visualstudio.com/items?itemName=ms-iot.vscode-ros)

針對 ROS 專案的協助工具，除了操控及檢視 ROS 狀態之外，也會針對 C++ 專案提供客製化設定。

> 就筆者的使用經驗，筆者會透過 VSCode Remote SSH 啟動 ROS master、觸發主程式後，利用 auto port forwarding 串接所有相關埠號到本地端，再用本地 (ROS for Windows) rviz 工具做視覺化，完美繞過 OpenGL 應用程式無法使用 X11 Forwarding 的問題。

#### [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

圖標擴充套件，簡約的設計語彙讓使用者看了心情很好 XD

## 小結

相比 Vim，VSCode 是一個相對沒有包袱的編輯器 (想想 Vim 還有 Vi 這個前身要顧)，以至於他可以挑選較現代的語言以及工具去開發，同時也有許多前輩工具可以借鑑，種種優勢讓這個編輯器本身可以站在比較好的起點。這個工具依然還有一些問題需要解決，但我們可以期待在不久的未來能看到他更多有趣的表現。

沒有最好的編輯器，只有最適合的編輯器；沒有必裝的擴充套件，只有針對不同使用需求，去挑選能各自解決痛點的套件！
