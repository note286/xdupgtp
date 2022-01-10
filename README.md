<p align="center"><a href="https://github.com/note286/xdupgtp"><img src="logo.png"></a></p>
<p align="center">
<a href="https://github.com/note286/xdupgtp/blob/main/LICENSE"><img src="https://img.shields.io/github/license/note286/xdupgtp"></a>
<a href="https://github.com/note286/xdupgtp"><img src="https://img.shields.io/github/stars/note286/xdupgtp"></a>
<a href="https://github.com/note286/xdupgtp/issues?q=is%3Aopen+is%3Aissue"><img src="https://img.shields.io/github/issues/note286/xdupgtp"></a>
<a href="https://github.com/note286/xdupgtp/issues?q=is%3Aissue+is%3Aclosed"><img src="https://img.shields.io/github/issues-closed/note286/xdupgtp"></a>
<a href="https://github.com/note286/xdupgtp/commits/main"><img src="https://img.shields.io/github/commit-activity/m/note286/xdupgtp"></a>
<a href="https://github.com/note286/xdupgtp/commits/main"><img src="https://img.shields.io/github/last-commit/note286/xdupgtp"></a>
<a href="https://github.com/note286/xdupgtp/tags"><img src="https://img.shields.io/github/v/tag/note286/xdupgtp"></a>
</p>

# 目录

- [项目名称](#项目名称)
- [注意事项](#注意事项)
- [使用/示例](#使用示例)
  - [卸载与安装](#卸载与安装)
    - [配置镜像源](#配置镜像源)
    - [更新包管理器和所有包](#更新包管理器和所有包)
  - [字体安装](#字体安装)
    - [Windows](#windows)
    - [GNU/Linux](#gnulinux)
    - [macOS](#macos)
    - [Overleaf](#overleaf)
    - [TeXPage](#texpage)
  - [下载与编辑](#下载与编辑)
  - [学位类型](#学位类型)
  - [编译](#编译)
    - [命令编译](#命令编译)
      - [latexmk编译](#latexmk编译)
      - [四次编译](#四次编译)
    - [文本编辑器编译](#文本编辑器编译)
    - [WinEdt编译](#winedt编译)
    - [TeXworks编译](#texworks编译)
    - [TeXstudio编译](#texstudio编译)
    - [Texmaker编译](#texmaker编译)
    - [Overleaf编译](#overleaf编译)
    - [TeXPage编译](#texpage编译)
  - [文档类可选参数](#文档类可选参数)
  - [参考文献引用](#参考文献引用)
  - [字体形状与字体系列](#字体形状与字体系列)
  - [交叉引用](#交叉引用)
  - [图片](#图片)
  - [表格](#表格)
  - [论文标题](#论文标题)
  - [签名图像](#签名图像)
- [模板来源](#模板来源)
- [版本记录](#版本记录)
- [免责声明](#免责声明)
- [作者](#作者)

# 项目名称

xdupgtp-Xidian University Postgraduate Thesis Proposal

西安电子科技大学研究生学位论文开题报告表XeLaTeX模板

# 注意事项

在使用过程中有任何问题或者建议，可以提[Issue](https://github.com/note286/xdupgtp/issues)反馈，注意，不同的问题开多个issue，不要堆在一个issue里。

关于环境配置请阅读[install-latex-guide-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf)，想要入门LaTeX或者对LaTeX语法一知半解的请阅读[lshort-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/lshort/chinese/lshort-zh-cn.pdf)，想要查询数学符号的可以在[symbols-a4.pdf](https://mirrors.ustc.edu.cn/CTAN/info/symbols/comprehensive/symbols-a4.pdf)中搜索。本项目文档都很详细，请认真阅读README。

**由于模板升级频繁，在开始使用和提问前，请确保您已经认真完整地阅读了README和示例代码。**

# 使用/示例

本节介绍了一些使用本项目模板的方法，建议用户根据自身情况阅读。

## 卸载与安装

Windows和GNU/Linux平台使用[TeX Live](https://www.tug.org/texlive/)，macOS平台使用[MacTeX](https://www.tug.org/mactex/)，跨版本升级均需要卸载旧版。

Windows平台卸载方法为管理员身份直接运行`C:\texlive\2021\tlpkg\installer\uninst.bat`，不同版本和安装位置请按需修改目录，更多介绍请参考[install-latex-guide-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf)第1.2节，GNU/Linux平台卸载方法请参考[install-latex-guide-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf)第2.2节，macOS上卸载方法请参考[Uninstalling MacTeX](https://www.tug.org/mactex/uninstalling.html)。

本项目模板仅在TeX Live/MacTeX 2021通过测试，其他旧版本并未实际进行测试。建议安装最新版LaTeX发行版套装并更新所有包，如果已安装TeX Live或MacTeX并且能够编译，用户可以选择不升级套装，不更新包。

校内睿思下载地址：[TeX Live 2021](http://rs.xidian.edu.cn/forum.php?mod=viewthread&tid=1094234)和[MacTeX 2021](http://rs.xidian.edu.cn/forum.php?mod=viewthread&tid=1094235)，最新版中科大源校外下载地址：[TeX Live](https://mirrors.ustc.edu.cn/CTAN/systems/texlive/Images/texlive.iso)和[MacTeX](https://mirrors.ustc.edu.cn/CTAN/systems/mac/mactex/MacTeX.pkg)。

后续如无特殊情况，仅以Windows举例，其他操作系统上类似。右键选择下载好的`.iso`文件，选择打开方式->Windows资源管理器，然后右键以管理员身份运行`install-tl-windows.bat`，保持默认配置即可，如没有本地阅读文档的需求，安装时可以不勾选安装文档的选项，这样会减少大约一半的磁盘占用空间，具体来说，在TeX Live安装窗口中点击左下角Advanced，取消勾选安装字体/宏包文档目录树和安装字体/宏包源码目录树即可不安装文档和源码。更多LaTeX环境安装与配置请阅读[install-latex-guide-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf)，建议更新所有包至最新版，Windows平台上使用管理员身份运行[cmd](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/cmd)。

### 配置镜像源

管理员权限运行

```shell
tlmgr repository set https://mirrors.ustc.edu.cn/CTAN/systems/texlive/tlnet/
```

### 更新包管理器和所有包

管理员权限运行

```shell
tlmgr update --all --self
```

如果遇到更新失败，重新执行一遍。

## 字体安装

考虑到可能存在版权问题，故不提供字体文件或字体下载链接。

对于编译得到pdf文件，可以通过运行

```shell
pdffonts xdupgtp.pdf
```

来查看字体信息，包括字体名称和字体嵌入等情况。

### Windows

Windows平台无需手动配置字体，所需字体Windows操作系统已内置。

### GNU/Linux

由于默认情况下中易宋体的意大利形状对应的是中易楷体，因此中文字体除中易宋体和中易黑体外，还需要中易楷体。此外，第2页开题报告要求标题所用字体为华文中宋。

用户可以从Windows操作系统字体库中拷贝出`simhei.ttf`、`simkai.ttf`、`simsun.ttc`、`STZHONGS.TTF`、`times.ttf`、`timesbd.ttf`、`timesbi.ttf`和`timesi.ttf`共8个字体文件至GNU/Linux，其中4个中文字体文件位于`C:\Windows\Fonts`处，Times New Roman字体的4个字体文件位于`C:\Windows\Fonts\Times New Roman`处。用户在查找字体时，可以根据Windows中英文系统内字体名称来查找，找到后复制该字体，粘贴至某个空白文件夹即可得到对应的字体文件，然后将这8个字体文件传输至GNU/Linux。

|    字体名称     |  字体文件名  |  Windows英文系统内字体名称  | Windows中文系统内字体名称 |
| :-------------: | :----------: | :-------------------------: | :-----------------------: |
|    中易黑体     |  simhei.ttf  |       SimHei Regular        |         黑体 常规         |
|    中易楷体     |  simkai.ttf  |        KaiTi Regular        |         楷体 常规         |
|    中易宋体     |  simsun.ttc  |       SimSun Regular        |         宋体 常规         |
|    华文中宋     | STZHONGS.TTF |     STZhongsong Regular     |       华文中宋 常规       |
| Times New Roman |  times.ttf   |   Times New Roman Regular   |   Times New Roman 常规    |
| Times New Roman | timesbd.ttf  |    Times New Roman Bold     |   Times New Roman 粗体    |
| Times New Roman | timesbi.ttf  | Times New Roman Bold Italic |  Times New Roman 粗斜体   |
| Times New Roman |  timesi.ttf  |   Times New Roman Italic    |   Times New Roman 斜体    |

使用如下命令在GNU/Linux安装字体：

```shell
sudo cp simhei.ttf simkai.ttf simsun.ttc STZHONGS.TTF times.ttf timesbd.ttf timesbi.ttf timesi.ttf /usr/share/fonts
```

然后就可以根据[编译](#编译)里的方法去编译了。

### macOS

参考[GNU/Linux](#gnulinux)从Windows平台提取字体文件，然后在macOS上双击安装字体文件即可。注意，虽然macOS内置了Times New Roman字体，但是该内置字体版本过于老旧，有缺字的现象，建议将8个字体文件全部安装。

然后就可以根据[编译](#编译)里的方法去编译了。

### Overleaf

在[Overleaf in Chinese](https://cn.overleaf.com/)平台使用时，由于Overleaf是安装在GNU/Linux上的最新版的TeX Live，用户无需考虑LaTeX套装版本问题，仅需要安装字体即可，用户首先将本仓库[下载](https://github.com/note286/xdupgtp/archive/refs/heads/main.zip)，再根据[GNU/Linux](#gnulinux)中的方法得到字体文件。

在Overleaf左上角点击创建新项目，选择上传项目，将压缩包上传至Overleaf，会自动进入该研究生学位论文开题报告表模板项目。点击左上角新建目录按钮，新建一个名为`fonts`的文件夹，选中`fonts`文件夹，点击左上角上传按钮将所有的字体文件上传。最后根据[Overleaf编译](#overleaf编译)配置如何在线编译。

### TeXPage

在[TeXPage](https://www.texpage.com/)平台使用时，由于TeXPage是安装在GNU/Linux上的最新版的TeX Live，用户无需考虑LaTeX套装版本问题，仅需要安装字体即可，用户首先将本仓库[下载](https://github.com/note286/xdupgtp/archive/refs/heads/main.zip)，再根据[GNU/Linux](#gnulinux)中的方法得到字体文件。

在TeXPage[个人主页](https://www.texpage.com/console)左上角点击创建，选择上传项目，将压缩包上传至TeXPage，进入该研究生学位论文开题报告表模板项目。点击左上角新建文件夹按钮，新建一个名为`fonts`的文件夹，选中`fonts`文件夹，点击左上角上传文件按钮将所有的字体文件上传。最后根据[TeXPage编译](#texpage编译)配置如何在线编译。

## 下载与编辑

请点击[下载](https://github.com/note286/xdupgtp/archive/refs/heads/main.zip)压缩包或[克隆](x-github-client://openRepo/https://github.com/note286/xdupgtp)该仓库，用户可直接修改`.tex`和`.bib`等类型文件来进行研究生学位论文开题报告表的撰写。具体来说，用户通过编辑`xdupgtp.tex`和`xdupgtp.bib`文件来撰写论文内容。此外，`xdupgtp.cls`文件请不要修改。

其中，仅选题依据、研究方案、研究基础和开题报告记录这四部分支持自动分页，无需用户手动分页，其他部分仅支持单页内容的撰写。

## 学位类型

本项目模板支持学术学位博士研究生、专业学位博士研究生、学术学位硕士研究生和专业学位硕士研究生共4种类型开题报告表，相应的文档类可选参数如下：

- `da`，学术学位博士研究生（Doctor of Academic）
- `dp`，专业学位博士研究生（Doctor of Professional）
- `ma`，学术学位硕士研究生（Master of Academic）
- `mp`，专业学位硕士研究生（Master of Professional）

例如，切换为专业学位博士研究生，即将

```latex
\documentclass{xdupgtp}
```

改为

```latex
\documentclass[dp]{xdupgtp}
```

默认为学术学位博士研究生，即不添加文档类可选参数则为学术学位博士研究生。

此外，在`examples`中已内置对应学位类型的`.tex`文件，用户可以将`xdupgtp.tex`中所有文件内容替换为相应的`xdupgtp-*.tex`文件内容，避免手动配置的麻烦。

## 编译

本项目目前仅在Windows和GNU/Linux平台上的TeX Live 2021和macOS平台上的MacTeX 2021进行了测试，均更新所有包至最新版，并参考[字体安装](#字体安装)安装了缺失字体。命令编译时切换到`xdupgtp.tex`所在目录执行命令即可。IDE编译选择对应IDE中的`XeLaTeX`的编译方式，参考文献使用`BibTeX`编译。关于PDF查看器，Windows平台上推荐使用[Sumatra PDF Viewer](https://www.sumatrapdfreader.org/free-pdf-reader)，macOS平台上推荐[Skim](https://skim-app.sourceforge.io/)，适当配置可支持正向同步和反向同步。

### 命令编译

介绍如何使用命令编译，可选择使用`latexmk`来快速编译或者常规的四次编译。

#### latexmk编译

编译

```shell
latexmk
```

清理辅助文件

```shell
latexmk -c
```

#### 四次编译

编译

```shell
xelatex -synctex=1 xdupgtp
bibtex xdupgtp
xelatex -synctex=1 xdupgtp
xelatex -synctex=1 xdupgtp
```

清理辅助文件

```shell
latexmk -c
```

### 文本编辑器编译

任何一款[文本编辑器](https://zh.wikipedia.org/wiki/%E6%96%87%E6%9C%AC%E7%BC%96%E8%BE%91%E5%99%A8)均可以编辑`.tex`文件，包括[Sublime Text](https://www.sublimetext.com/)和[Visual Studio Code](https://code.visualstudio.com/)等，大部分文本编辑器均提供自定义编译功能，例如Sublime Text的[Build Systems](https://www.sublimetext.com/docs/build_systems.html)，可以参考[命令编译](#命令编译)自行创建相应的编译配置，利用编译快捷键进行编译。此外，一些文本编辑器支持安装扩展，例如Sublime Text可以安装[LaTeXTools](https://packagecontrol.io/packages/LaTeXTools)来辅助进行`.tex`文件的编辑，还提供了一些常用的编译配置。可以搭配Sumatra PDF Viewer或Skim实现反向同步，正向同步一般需要文本编辑器或其扩展支持。

一些文本编辑器不支持自定义编译功能或者安装扩展，依然可以使用文本编辑器来编辑`.tex`文件，使用命令来进行编译。

### WinEdt编译

下载[WinEdt](https://www.winedt.com/download.html)安装包并安装，支持Windows平台。安装后可以查看[Quick Guide](http://www.winedt.com/download.html#Quick_Guide)获取更多关于WinEdt的使用帮助。

打开WinEdt后，点击File->Open打开`xdupgtp.tex`文件。点击Option->Execution Modes，在弹出的面板左侧选择TeXify，在面板左下角点击Browse for executable，依次找到`C:\texlive\2021\bin\win32\latexmk.exe`文件并点击打开，如果安装TeX Live至非默认目录，依情况修改；将左下角的Switches中对应值清空，最后点击面板上的OK。

在Toolbar中PDF Preview左侧的按钮下拉菜单中可以切换编译引擎。完全编译选择TeXify，可以自动处理交叉引用和参考文献引用，编译时间较长；不考虑交叉引用和参考文献引用时，快速编译选择XeLaTeX，编译时间较短，需要参考文献引用时再点击TeX->BibTeX编译参考文献，接着执行两次XeLaTeX编译可以生成参考文献列表和参考文献引用。

点击Tools->Erase Output Files或者Toolbar中的Erase Output Files按钮，在弹出的面板中再点击Delete Now可以清理辅助文件，常用于某次报错后清理错误的辅助文件，避免二次报错。

可以参考[QuickGuide.pdf](http://www.winedt.com/doc/QuickGuide.pdf)中第2.3节配置WinEdt默认PDF查看器为Sumatra PDF Viewer，即点击Option->Execution Modes，在弹出的面板选择PDF Viewer标签，将PDF Viewer Executable改为SumatraPDF.exe，Sumatra PDF Viewer默认安装在`%LOCALAPPDATA%\SumatraPDF\`处，这样就可以使用Sumatra PDF Viewer来查看PDF文件。Sumatra PDF Viewer的反向同步一般WinEdt会自动配置，如果需要手动配置，在Sumatra PDF Viewer左上角点击三道杠->设置->选项，在最后设置反向搜索命令行中填写

```
"C:\Program Files\WinEdt Team\WinEdt 10\WinEdt.exe" "[Open(|%f|);SelPar(%l,8);]"
```

并点击确定即可。

注意，由于WinEdt添加新的编译配置较为复杂，本方法将TeXify内的编译引擎由LaTeX改为latexmk，并使用了主目录下的`latexmkrc`编译配置。

### TeXworks编译

下载[TeXworks](https://tug.org/texworks/)安装包并安装，支持Windows，GNU/Linux和macOS平台。安装后可以查看[A short manual for TeXworks](https://github.com/TeXworks/manual/releases)获取更多关于TeXworks的使用帮助。

打开TeXworks后，点击编辑->首选项->排版->处理工具，点击右下角蓝色加号，在弹出的面板中名称处填写latexmk，程序处点击右侧浏览选择`C:\texlive\2021\bin\win32\latexmk.exe`文件并点击打开，如果安装TeX Live至非默认目录，依情况修改，最后点击面板上的OK。选择新建的latexmk，点击右侧的蓝色上箭头移动至顶部，再将内置的XeLaTeX和BibTeX移动至顶部，使得latexmk、XeLaTeX和BibTeX位于处理工具的顶部，方便后续切换引擎。再选择下方的默认，可以将latexmk或者XeLaTeX设置为默认，最后点击OK。

点击文件->打开，选择`xdupgtp.tex`文件，Toolbars左上角可以切换编译引擎。完全编译选择latexmk，可以自动处理交叉引用和参考文献引用，编译时间较长；不考虑交叉引用和参考文献引用时，快速编译选择XeLaTeX，编译时间较短，需要参考文献引用时切换至BibTeX编译参考文献，接着执行两次XeLaTeX编译可以生成参考文献列表和参考文献引用。

点击文件->删除辅助文件，在弹出的面板中再点击删除可以清理辅助文件，常用于某次报错后清理错误的辅助文件，避免二次报错。

TeXworks内置了PDF查看器，支持正向同步和反向同步功能，具体请查看[A short manual for TeXworks](https://github.com/TeXworks/manual/releases)中5.1节。

### TeXstudio编译

下载[TeXstudio](https://www.texstudio.org/#download)安装包并安装，支持Windows，GNU/Linux和macOS平台。安装后可以查看[TeXstudio : User manual](https://htmlpreview.github.io/?https://github.com/texstudio-org/texstudio/master/utilities/manual/usermanual_en.html)获取更多关于TeXstudio的使用帮助。

打开TeXstudio后，点击文件->打开，选择`xdupgtp.tex`文件。点击选项->设置TeXstudio->命令，将Latexmk处值改为`latexmk.exe`，切换至构建标签，将默认编译器改为Latexmk或者XeLaTeX。

TeXstudio无法快速切换编译引擎，只能在选项->设置TeXstudio->构建里修改默认编译器，或者点击工具->命令里临时运行指定的编译引擎。完全编译选择latexmk，可以自动处理交叉引用和参考文献引用，编译时间较长；不考虑交叉引用和参考文献引用时，快速编译选择XeLaTeX，编译时间较短，需要参考文献引用时切换至BibTeX编译参考文献，接着执行两次XeLaTeX编译可以生成参考文献列表和参考文献引用。

点击工具->清理辅助文件，在弹出的面板中选择合适的范围再点击OK便可以清理辅助文件，常用于某次报错后清理错误的辅助文件，避免二次报错。

TeXstudio内置了PDF查看器，支持正向同步和反向同步功能，具体请查看[TeXstudio : User manual](https://htmlpreview.github.io/?https://github.com/texstudio-org/texstudio/master/utilities/manual/usermanual_en.html)中4.10节。

### Texmaker编译

下载[Texmaker](https://www.xm1math.net/texmaker/)安装包并安装，支持Windows，GNU/Linux和macOS平台。安装后可以查看[Texmaker : User manual](https://www.xm1math.net/texmaker/doc.html)获取更多关于Texmaker的使用帮助。

打开Texmaker后，点击文件->打开，选择`xdupgtp.tex`文件。点击选项->配置Texmaker->命令，将LaTeX-Mk中对应值改为`latexmk`，点击OK。

工具栏中可以切换编译引擎。完全编译选择latexmk，可以自动处理交叉引用和参考文献引用，编译时间较长；不考虑交叉引用和参考文献引用时，快速编译选择XeLaTeX，编译时间较短，需要参考文献引用时切换至BibTeX编译参考文献，接着执行两次XeLaTeX编译可以生成参考文献列表和参考文献引用。

点击工具->清除历史记录，在弹出的面板中再点击删除文件可以清理辅助文件，常用于某次报错后清理错误的辅助文件，避免二次报错。

Texmaker内置了PDF查看器，支持正向同步和反向同步功能，具体请查看[Texmaker : User manual](https://www.xm1math.net/texmaker/doc.html)中3.3节。

### Overleaf编译

用户首先根据[Overleaf](#overleaf)中关于字体安装的介绍安装好字体，再点击左上角的菜单按钮修改编译器为`XeLaTeX`，最后为`xdupgtp`文档类传入`overleaf`参数，即将`xdupgtp.tex`中

```latex
\documentclass{xdupgtp}
```

改为

```latex
\documentclass[overleaf]{xdupgtp}
```

后即可正常编译。

### TeXPage编译

用户首先根据[TeXPage](#texpage)中关于字体安装的介绍安装好字体，再点击右上角的设置按钮修改LaTeX编译器为`XeLaTeX`，最后为`xdupgtp`文档类传入`texpage`参数，即将`xdupgtp.tex`中

```latex
\documentclass{xdupgtp}
```

改为

```latex
\documentclass[texpage]{xdupgtp}
```

后即可正常编译。

## 文档类可选参数

本项目模板中`xdupgtp`文档类支持如下可选参数：

- `overleaf`或`texpage`，详见[Overleaf编译](#overleaf编译)或[TeXPage编译](#texpage编译)
- `da`、`dp`、`ma`或`mp`，详见[学位类型](#学位类型)

以上参数功能相互独立，均可任意组合使用，选项之间无先后顺序之分，多个选项之间使用逗号隔开，例如：

```latex
\documentclass[overleaf,ma]{xdupgtp}
```

## 参考文献引用

在开题报告表中，一般仅国内外研究现状处会出现参考文献引用，因此用户在撰写国内外研究现状时可以直接引用参考文献，对应的参考文献列表会自动出现在国内外研究现状后，无需用户干预，例如：

```latex
测试引用\cite{ChangHTD19,WangZSS21,GongL21}是否正常。
```

已添加部分常用类型参考文献条目样例至`xdupgtp.bib`，用户可以参考使用，需要注意的是，不要轻易使用分组即`{}`，尤其是`author`字段。参考文献样式符合已于2015年12月1日实施的国家标准《信息与文献 参考文献着录规则》（标准号[GB/T 7714-2015](http://std.samr.gov.cn/gb/search/gbDetailed?id=71F772D8055ED3A7E05397BE0A0AB82A)），用户可以自行下载相应标准查看示例。用户可以使用[dblp](https://dblp.org/)生成的bib条目，[百度学术](https://xueshu.baidu.com/)和[Google Scholar](https://scholar.google.com.hk/)导出的bib文件不是很规范，经常有很大问题，感兴趣的可以去[BibTeX format explained](https://www.bibtex.com/g/bibtex-format/)了解bib文件的合法格式，遇到[dblp](https://dblp.org/)没有的条目，可以手动整理。

在[btxdoc](https://mirrors.ustc.edu.cn/CTAN/biblio/bibtex/base/btxdoc.pdf)文档中第3.1章节指出：

> `article`: An article from a journal or magazine. **Required fields**: author, title, journal, year. **Optional fields**: volume, number, pages, month, note.
>
> `book`: A book with an explicit publisher. **Required fields**: author or editor, title, publisher, year. **Optional fields**: volume or number, series, address, edition, month, note.
>
> `booklet`: A work that is printed and bound, but without a named publisher or sponsoring institution. Required field: title. **Optional fields**: author, howpublished, address, month, year, note.
>
> `conference`: The same as INPROCEEDINGS, included for Scribe compatibility.
>
> `inbook`: A part of a book, which may be a chapter (or section or whatever) and/or a range of pages. **Required fields**: author or editor, title, chapter and/or pages, publisher, year. **Optional fields**: volume or number, series, type, address, edition, month, note.
>
> `incollection`: A part of a book having its own title. **Required fields**: author, title, booktitle, publisher, year. **Optional fields**: editor, volume or number, series, type, chapter, pages, address, edition, month, note.
>
> `inproceedings`: An article in a conference proceedings. **Required fields**: author, title, booktitle, year. **Optional fields**: editor, volume or number, series, pages, address, month, organization, publisher, note.
>
> `manual`: Technical documentation. Required field: title. **Optional fields**: author, organization, address, edition, month, year, note.
>
> `mastersthesis`: A Master’s thesis. **Required fields**: author, title, school, year. **Optional fields**: type, address, month, note.
>
> `misc`: Use this type when nothing else fits. **Required fields**: none. **Optional fields**: author, title, howpublished, month, year, note.
>
> `phdthesis`: A PhD thesis. **Required fields**: author, title, school, year. **Optional fields**: type, address, month, note.
>
> `proceedings`: The proceedings of a conference. **Required fields**: title, year. **Optional fields**: editor, volume or number, series, address, month, organization, publisher, note.
>
> `techreport`: A report published by a school or other institution, usually numbered within a series. **Required fields**: author, title, institution, year. **Optional fields**: type, number, address, month, note.
>
> `unpublished`: A document having an author and title, but not formally published. **Required fields**: author, title, note. **Optional fields**: month, year.

在示例文件中已经提供了若干个条目供参考。需要注意的是，无论中英文，每个作者均使用`and`连接。除非文献卷号、期号和页码均无，否则不必提供DOI选项。对于网页链接，使用`misc`类型条目，填写`author`、`title`、`howpublished`和`year`选项即可。

## 字体形状与字体系列

本项目模板正文默认使用中易宋体和Times New Roman，支持常用的字体形状如意大利和倾斜，支持常见的字体系列如加宽加粗。

对于中易宋体，意大利形状对应中易楷体，倾斜形状对应中易宋体伪斜体，加宽加粗系列对应中易宋体伪粗体。其中，参考[fontspec.pdf](https://mirrors.ustc.edu.cn/CTAN/macros/unicodetex/latex/fontspec/fontspec.pdf)中的示例，设置倾斜程度为`0.2`，参考清华大学学位论文模板[thuthesis.dtx](https://mirrors.ustc.edu.cn/CTAN/macros/latex/contrib/thuthesis/thuthesis.dtx)，设置粗细程度为`3`。

对于Times New Roman，意大利形状及加宽加粗系列均有对应的Times New Roman字体文件，倾斜形状与意大利形状一致，因此无需伪斜体和伪粗体。

字体形状和字体系列可以组合使用，例如：

```latex
意大利形状\textit{测试ABCabc123}
倾斜形状\textsl{测试ABCabc123}
加宽加粗系列\textbf{测试ABCabc123}
加宽加粗系列叠加意大利形状\textbf{\textit{测试ABCabc123}}
加宽加粗系列叠加倾斜形状\textbf{\textsl{测试ABCabc123}}
强调\emph{测试ABCabc123}
```

## 交叉引用

本项目模板有图、表、和公式等引用命令，使用方法如下：

```latex
图的具体内容如\figureref{figu1}所示。
表的具体内容如\tableref{tabl1}所示。
公式的具体内容如\equationref{equa1}所示。
```

## 图片

图片插入时，如果将图片文件放入`figures`文件夹，则无需添加路径，直接使用图片文件名即可，甚至扩展名也可以省略不写，可以参考如下示例：

```latex
\begin{tpfigure}
\includegraphics[width=.3\linewidth]{fig1file}
\captionof{figure}{方案开销}
\label{fig1}
\end{tpfigure}
```

如果用户需要插入多页pdf文件的某一页，可以使用`page`参数，例如插入`figfile.pdf`的第2页：

```latex
\includegraphics[page=2]{figfile}
```

另外，本项目模板实测`\textwidth`为`426.79135pt`，`\textheight`为`702.78308pt`，对插图字号有要求的用户画图时可参考这两个数值，避免图片尺寸超过页面可编辑范围。

此外，由于开题报告的特殊性，不支持浮动体，本项目模板自定义`tpfigure`环境来插入图片，图片显示位置即插入位置。

对于图片的格式，优先推荐`.tikz`、`.pgf`和`.pdf`格式的图片，不推荐`.png`和`.jpg`等非矢量图片格式。此外，对于已有的`.pdf`格式的图片，不需要转换成`.eps`文件。针对Microsoft Visio等绘图软件，建议使用打印成`.pdf`的方式，再使用TeX Live自带的`pdfcrop`命令进行快速高效裁剪。其中，使用`.tikz`和`.pgf`格式的图片时，用户需要使用`\input{}`命令而不是`\includegraphics{}`命令。

## 表格

参考`西安电子科技大学研究生学位论文模板（2015年修订版）-2019.03修订.docx`中关于表格字号的要求，本项目模板已经重定义了表格字号大小为5号，用户无需手动指定字号，可以参考如下示例：

```latex
\begin{tptable}
\renewcommand{\arraystretch}{1.5}
\captionof{table}{这是一个表格}
\label{tabl1}
\begin{tabular}{|c|c|}
\hline
表格 & 表格 \\
\hline
表格 & 表格 \\
\hline
\end{tabular}
\end{tptable}
```

由于开题报告的特殊性，不支持浮动体，本项目模板自定义`tptable`环境来插入表格，表格显示位置即插入位置。

## 论文标题

用户可以在`xdupgtp.tex`中配置论文标题，如果有两行，第一行写在`\thesisTitleOne{}`中，第二行写在`\thesisTitleTwo{}`中。如果论文标题仅有一行，`\thesisTitleTwo{}`中的值保持空即可，模板会自动判断第二行为空不输出下划线。

## 签名图像

由于部分用户线上进行开题，教师无法现场手写签名，故支持签名图像替代手写签名。

用户需要自行制作好签名图像，推荐处理成字迹全黑且背景透明并以`.png`格式存储，使用纯白色背景并以其他格式如`.jpg`和`.pdf`等格式存储也可。此外需要将图片四周的空白裁掉，尽量减小字迹与四周的间距。将准备好的签名图像放入`figures/sign/`。

用户在`xdupgtp.tex`中将签名图像相关的以`\renewcommand`开头的语句取消注释，现场手写签名的保持注释状态即可。每个签名图像使用`\sign{}`添加，其中分组内为签名图像文件名，无需扩展名且无需路径。此外，对于线上线下相结合的开题形式，支持使用`\emptysign`来留出现场手写签名的位置。

---

此外，如果需要打印好再线下填写日期，保持日期相关语句注释状态不变即可。如果需要插入日期手写图像，将对应的日期插入语句取消注释即可，如

```latex
\renewcommand\cyqmrq{\sign{lisidate}}
```

如果需要插入电子版的日期，将对应的日期插入语句取消注释即可，如

```latex
\renewcommand\cyqmrq{2022年1月10日}
```

# 模板来源

所有模板均参照[西安电子科技大学研究生院/研究生工作部](https://gr.xidian.edu.cn/xwsy/zlxz.htm)提供的Microsoft Word模板进行开发，建议用户使用前下载最新的Microsoft Word模板，对比MD5是否有变化，如有变化可以提issue请求更新模板，如无变化，可以检查下XeLaTeX模板与Microsoft Word模板是否一致。

- [学术学位博士研究生](https://gr.xidian.edu.cn/info/1047/7160.htm) MD5：4711941B554EDD2F95A205CA7C3F59AC
- [专业学位博士研究生](https://gr.xidian.edu.cn/info/1047/7803.htm) MD5：9BAEAE70B292FA8729A25B89CA2FC07C
- [学术学位硕士研究生](https://gr.xidian.edu.cn/info/1047/5087.htm) MD5：6E8904BD71541CFB90B90B0431CEACDE
- 专业学位硕士研究生
  - [统招专业学位硕士研究生](https://gr.xidian.edu.cn/info/1047/5086.htm) MD5：CB51149A636AD52E3F9B0B391AD07E8C
  - [非统招专业学位硕士研究生](https://gr.xidian.edu.cn/info/1047/5086.htm) MD5：CB51149A636AD52E3F9B0B391AD07E8C

# 版本记录

- `2022-01-10` [`v0.9.0`](https://github.com/note286/xdupgtp/releases/tag/v0.9.0) 支持插入手写日期图像。
- `2022-01-09` [`v0.8.0`](https://github.com/note286/xdupgtp/releases/tag/v0.8.0) 支持插入图表。
- `2022-01-03` [`v0.7.4`](https://github.com/note286/xdupgtp/releases/tag/v0.7.4) 适配旧版gbt7714。
- `2022-01-03` [`v0.7.3`](https://github.com/note286/xdupgtp/releases/tag/v0.7.3) 支持URL自动断行。
- `2022-01-03` [`v0.7.2`](https://github.com/note286/xdupgtp/releases/tag/v0.7.2) 适配最新版tcolorbox宏包。
- `2022-01-02` [`v0.7.1`](https://github.com/note286/xdupgtp/releases/tag/v0.7.1) 修正开题报告要求标题字体。
- `2022-01-02` [`v0.7.0`](https://github.com/note286/xdupgtp/releases/tag/v0.7.0) 支持签名图像。
- `2022-01-02` [`v0.6.0`](https://github.com/note286/xdupgtp/releases/tag/v0.6.0) 新增支持Overleaf和TeXPage。
- `2022-01-01` [`v0.5.1`](https://github.com/note286/xdupgtp/releases/tag/v0.5.1) 修复开题报告评语及结论中脚注不显示的bug。
- `2022-01-01` [`v0.5.0`](https://github.com/note286/xdupgtp/releases/tag/v0.5.0) 支持自动添加PDF元数据。
- `2022-01-01` [`v0.4.1`](https://github.com/note286/xdupgtp/releases/tag/v0.4.1) 配置\subsubsection{}样式。
- `2022-01-01` [`v0.4.0`](https://github.com/note286/xdupgtp/releases/tag/v0.4.0) 支持国内外研究现状引用参考文献。
- `2022-01-01` [`v0.3.0`](https://github.com/note286/xdupgtp/releases/tag/v0.3.0) 新增专业学位硕士研究生模板。
- `2022-01-01` [`v0.2.2`](https://github.com/note286/xdupgtp/releases/tag/v0.2.2) 修改选题来源填写位置。
- `2021-12-31` [`v0.2.1`](https://github.com/note286/xdupgtp/releases/tag/v0.2.1) 增加不同学位类型示例文件。
- `2021-12-31` [`v0.2.0`](https://github.com/note286/xdupgtp/releases/tag/v0.2.0) 新增学术学位硕士研究生模板。
- `2021-12-31` [`v0.1.0`](https://github.com/note286/xdupgtp/releases/tag/v0.1.0) 新增专业学位博士研究生模板。
- `2021-12-31` [`v0.0.1`](https://github.com/note286/xdupgtp/releases/tag/v0.0.1) 新增学术学位博士研究生模板。

# 免责声明

本模板的发布遵守[LaTeX Project Public License 1.3c](http://www.latex-project.org/lppl.txt)以及其后的最新版本，使用前请认真阅读协议内容。

本模板为作者个人制作，使用仅供参考，任何由于使用本模板而引起的任何问题均与本模板作者无关。

任何个人或组织以本模板为基础进行修改、扩展而生成的新的专用模板，请严格遵守[LaTeX Project Public License 1.3c](http://www.latex-project.org/lppl.txt)协议以及其后的最新版本。由于违犯协议而引起的任何纠纷争端均与本模板作者无关。

# 作者

- [@note286](https://github.com/note286)
