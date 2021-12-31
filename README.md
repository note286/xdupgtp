# 项目名称

xdupgtp-Xidian University Postgraduate Thesis Proposal

西安电子科技大学研究生学位论文开题报告表XeLaTeX模板

# 使用/示例

本节介绍了一些使用本项目模板的方法，建议用户根据自身情况阅读。

## 学位类型

本项目模板支持学术学位博士研究生、专业学位博士研究生和学术学位硕士研究生共3种类型开题报告表，相应的文档类可选参数如下：

- `da`，学术学位博士研究生（Doctor of Academic）
- `dp`，专业学位博士研究生（Doctor of Professional）
- `ma`，学术学位硕士研究生（Master of Academic）

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

# 版本记录

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
