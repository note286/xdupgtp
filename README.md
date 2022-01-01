# 项目名称

xdupgtp-Xidian University Postgraduate Thesis Proposal

西安电子科技大学研究生学位论文开题报告表XeLaTeX模板

# 使用/示例

本节介绍了一些使用本项目模板的方法，建议用户根据自身情况阅读。

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

## 参考文献引用

在开题报告表中，一般仅国内外研究现状处会出现参考文献引用，因此用户在撰写国内外研究现状时可以直接引用参考文献，对应的参考文献列表会自动出现在国内外研究现状后，无需用户干预，例如：

```latex
测试引用\cite{ChangHTD19,WangZSS21,GongL21}是否正常。
```

已添加部分常用类型参考文献条目样例至`xdupgtp.bib`，用户可以参考使用，需要注意的是，不要轻易使用分组即`{}`，尤其是`author`字段。关于样式标准请参考[参考文献条目样式](#参考文献条目样式)，用户可以自行下载相应标准查看示例。用户可以使用[dblp](https://dblp.org/)生成的bib条目，[百度学术](https://xueshu.baidu.com/)和[Google Scholar](https://scholar.google.com.hk/)导出的bib文件不是很规范，经常有很大问题，感兴趣的可以去[BibTeX format explained](https://www.bibtex.com/g/bibtex-format/)了解bib文件的合法格式，遇到[dblp](https://dblp.org/)没有的条目，可以手动整理。

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

# 版本记录

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
