\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xdupgtp}[2021/12/31 Xidian University Postgraduate Thesis Proposal class, v0.0.1, created by @note286, published in https://note286.github.io/xdupgtp/]

% 加载ctexart文档类
\LoadClass[a4paper,zihao=-4,fontset=none]{ctexart}
% 书签
\RequirePackage[bookmarksnumbered,hidelinks]{hyperref}
% 绘制边框
\RequirePackage[most]{tcolorbox}
% 复选框符号
\RequirePackage{stmaryrd}
% 对勾符号
\RequirePackage{amssymb}
% 增强表格
\RequirePackage{array}
% 自定义宽度表格横线
\RequirePackage{booktabs}
% 条件判断
\RequirePackage{xifthen}
% 页脚
\RequirePackage{fancyhdr}
% 下划线
\RequirePackage{xeCJKfntef}
% 页面大小
\RequirePackage[left=3cm,right=3cm,top=2.5cm,bottom=2.5cm,footskip=0cm,headsep=0cm,headheight=0cm]{geometry}

% 设置页面样式为空
\pagestyle{empty}

% 配置字体
% 自定义加粗加斜程度
\newcommand\FakeBoldValue{3}
\newcommand\FakeSlantValue{0.2}
% 配置默认英文字体
\setmainfont{Times New Roman}
% 配置默认中文字体
\setCJKmainfont{SimSun}[
  BoldFont={SimSun},BoldFeatures={FakeBold=\FakeBoldValue},
  SlantedFont={SimSun},SlantedFeatures={FakeSlant=\FakeSlantValue},
  BoldSlantedFont={SimSun},BoldSlantedFeatures={FakeBold=\FakeBoldValue,FakeSlant=\FakeSlantValue},
  ItalicFont={KaiTi},
  BoldItalicFont={KaiTi},BoldItalicFeatures={FakeBold=\FakeBoldValue}
  ]
% 定义黑体字体
\newCJKfontfamily\heiti{SimHei}[BoldFont={SimHei},BoldFeatures={FakeBold=\FakeBoldValue}]

% 设置各级标题样式
\ctexset{
  section={
    name={,、},
    number={\chinese{section}},
    format={\raggedright\bfseries\zihao{-4}},
    aftername={},
    afterskip={0pt plus 0pt minus 0pt}
  }
}
\ctexset{
  subsection={name={（,）},
    number={\chinese{subsection}},
    format={\raggedright\bfseries\zihao{-4}},
    aftername={},
    titleformat={},
    beforeskip={8pt plus 0pt minus 0pt},
    afterskip={0pt plus 0pt minus 0pt}
  }
}

% 设置下划线粗细
\newcommand\ulthickness{1pt}
% 自定义固定长度下划线命令
\newcommand\valueWithUL[2]{\CJKunderline[thickness=\ulthickness]{\makebox[#1]{#2}}}

% 定义封面和扉页
\AtBeginDocument{
  \begin{titlepage}
  % 空12pt的距离 下一行为16pt
  \vspace*{-4pt}
  % 学号
  \begin{flushright}
  \zihao{3}
  \textbf{学号\enskip}\CJKunderline[thickness=\ulthickness]{\enskip\studentNo\enskip}
  \end{flushright}
  \vspace{24pt}
  % 标题
  \begin{center}
  \zihao{3}
  \bfseries
  \makebox[11em][s]{西安电子科技大学}\\
  {\zihao{-2}\heiti 博士学位论文开题报告表}
  \end{center}
  \vspace{65pt}
  % 论文题目
  \begin{center}
  \zihao{3}
  % 存储论文题目最长值的宽度
  \newlength\titleValueWidth
  % 存储论文题目宽度便于绘制下划线
  \newlength\thesisTitleOneWidth
  \newlength\thesisTitleTwoWidth
  \settowidth{\thesisTitleOneWidth}{\thesisTitleOne}
  \settowidth{\thesisTitleTwoWidth}{\thesisTitleTwo}
  % 计算最大值
  \setlength{\titleValueWidth}{\maxof{\thesisTitleOneWidth}{\thesisTitleTwoWidth}}
  % 补充1em长度 使得下划线略长于文本
  \addtolength{\titleValueWidth}{1em}
  % 排版论文题目
  \textbf{论文题目：}\valueWithUL{\titleValueWidth}{\thesisTitleOne}
  \ifthenelse{\thesisTitleTwoWidth=0}{\vspace{25pt}}{
    \\\phantom{\textbf{论文题目：}}\valueWithUL{\titleValueWidth}{\thesisTitleTwo}}
  \end{center}
  \vspace{80pt}
  % 个人信息
  \begin{center}
  % 设置字号为16pt
  \zihao{3}
  % 存储最长的值的宽度
  \newlength\metaValueWidth
  % 存储首页若干值的宽度便于绘制下划线
  \newlength\authorNameWidth
  \newlength\majorWidth
  \newlength\submajorWidth
  \newlength\advisorNameWidth
  \newlength\schoolWidth
  \newlength\submitDateWidth
  \settowidth{\authorNameWidth}{\authorName}
  \settowidth{\majorWidth}{\major}
  \settowidth{\submajorWidth}{\submajor}
  \settowidth{\advisorNameWidth}{\advisorName}
  \settowidth{\schoolWidth}{\school}
  \settowidth{\submitDateWidth}{\submitDate}
  % 计算最大值
  \setlength{\metaValueWidth}{
  \maxof{\authorNameWidth}{
  \maxof{\majorWidth}{
  \maxof{\submajorWidth}{
  \maxof{\advisorNameWidth}{
  \maxof{\schoolWidth}{\submitDateWidth}}}}}}
  % 补充1em长度 使得下划线略长于文本
  \addtolength{\metaValueWidth}{1em}
  % 增加高度
  \renewcommand{\arraystretch}{1.35}
  % 排版开题报告元数据
  % 第一列加粗
  \begin{tabular}{>{\bfseries}cc}
  姓\qquad{}名&\valueWithUL{\metaValueWidth}{\authorName}\\
  一级学科&\valueWithUL{\metaValueWidth}{\major}\\
  二级学科&\valueWithUL{\metaValueWidth}{\submajor}\\
  指导教师&\valueWithUL{\metaValueWidth}{\advisorName}\\
  学\qquad{}院&\valueWithUL{\metaValueWidth}{\school}\\
  开题日期&\valueWithUL{\metaValueWidth}{\submitDate}\\
  \end{tabular}
  \end{center}
  \vspace{40pt}
  \begin{center}
  \zihao{3}
  西安电子科技大学研究生院制
  \end{center}
  \end{titlepage}
  \newpage
  \vspace*{-28pt}
  % 开题报告要求
  \begin{center}
  \zihao{3}
  西安电子科技大学博士学位论文开题报告要求
  \end{center}
  \vspace{15pt}
  \zihao{-4}\setlength{\baselineskip}{28pt}
  \par
  一、博士生通过综合考试后，必须在第三学期末之前（直接攻博研究生在第五学期末之前）进行学位论文开题报告。
  \par
  二、各学位授权点和指导教师必须严格督促每位博士生如实、如期在本学科或相关学科范围内公开举行开题报告会，严禁伪造和抄袭开题报告。
  \par
  三、开题报告会由博士生所在学科的负责人或其指导教师（指导小组负责人）组织3～5名相关学科的专家组成报告会小组，小组成员原则上应为博士生导师，其中至少有1名校外专家。小组设组长1名，博士生本人的指导教师可作为小组成员参加开题报告会。
  \par
  四、开题报告结论分为两种：1.通过，按专家意见修改后进行学位论文撰写工作；2.不通过，重新开题。
  \par
  五、开题报告通过的博士生，根据报告会小组专家的意见和建议，填写好本表，经报告会小组所有成员和本人指导教师签字确认后，在提交送审学位论文时交至所在学院。
  \par
  六、开题报告没有通过的博士生，填写好“西安电子科技大学博士研究生选题报告修改说明表”，根据报告会小组专家的意见和建议修改选题报告，重新组织开题。重新组织开题的博士生必须在第四学期末之前（直接攻博研究生在第六学期末之前）完成开题报告会。
  \par
  七、在学位论文开题规定的时间期限内休学的博士生，开题的时间期限相应顺延。
  \par
  八、开题必须在规定时间内通过研究生学位管理系统申请，本表由系统自动生成，用A3纸张正反套印。
  \par
  九、表格填写要求：正文字体宋体，字号小四，行间距固定值20磅。
  \newpage
}

% 定义边框边距和线宽
\newcommand\boxmargin{5pt}
\newcommand\boxrule{1pt}

\newtcolorbox{mybox1}{
  standard jigsaw,
  sharp corners=all,
  colframe=black,
  opacityback=0,
  boxsep=0pt,
  boxrule=\boxrule,
  top=\boxmargin,
  bottom=\boxmargin,
  left=\boxmargin,
  right=\boxmargin,
  space to upper,
  lower separated=false,
  halign lower=flush right,
  before upper={\noindent \linespread{1}\fontsize{12}{20}\selectfont}
}

\newtcolorbox{mybox2}{
  standard jigsaw,
  sharp corners=all,
  colframe=black,
  breakable,
  height fixed for=all,
  height fill=maximum,
  opacityback=0,
  boxsep=0pt,
  boxrule=\boxrule,
  top=\boxmargin,
  bottom=\boxmargin,
  left=\boxmargin,
  right=\boxmargin,
  space to upper,
  lower separated=false,
  halign lower=flush right,
  before upper={\parindent 2em \linespread{1}\fontsize{12}{20}\selectfont}
}

\newtcolorbox{mybox3}{
  standard jigsaw,
  sharp corners=all,
  colframe=black,
  opacityback=0,
  boxsep=0pt,
  boxrule=\boxrule,
  top=0pt,
  bottom=0pt,
  left=0pt,
  right=0pt,
  space to upper
}

\newenvironment{xtly}
  {\begin{mybox1}
  选题来源：}
  {\end{mybox1}}

\newenvironment{zwzy}
  {\vspace*{-\baselineskip-\boxrule}
  \begin{mybox1}
  中文摘要：
  \end{mybox1}
  \vspace*{-\baselineskip-\boxrule}
  \begin{mybox2}}
  {\end{mybox2}}

\newenvironment{xtyj}
  {\vspace*{-0.6\baselineskip-\boxrule}
  \begin{mybox2}}
  {\end{mybox2}}

\newenvironment{yjfa}
  {\vspace*{-0.6\baselineskip-\boxrule}
  \begin{mybox2}}
  {\end{mybox2}}

\newenvironment{yjjc}
  {\vspace*{-0.6\baselineskip-\boxrule}
  \begin{mybox2}}
  {\end{mybox2}}

\newenvironment{bgjl}
  {\vspace*{-0.6\baselineskip-\boxrule}
  \begin{mybox2}
  （着重记录专家对选题报告提出的问题及修改意见和建议。）
  \par}
  {\end{mybox2}}

\newenvironment{pyjl}
  {\vspace*{0.1\baselineskip-0.5\boxrule}
  \newcommand\yijian{$\boxempty$优秀\newline $\boxempty$良好\newline $\boxempty$合格\newline $\boxempty$不合格}
  \begin{mybox3}
  \vspace*{-\boxrule}
  \begin{center}
  \newcolumntype{?}{!{\vrule width \boxrule}}
  \begin{tabular}{@{}>{\centering\arraybackslash}m{6em}@{}?m{\textwidth-6em-6em-\boxrule-\boxrule-2\tabcolsep}?@{}>{\centering\arraybackslash}m{6em}@{}}
  \textbf{一级指标}&\centering \textbf{二级指标}&\textbf{评价意见}\\
  \specialrule{\boxrule}{0pt}{0pt}
  \textbf{论文选题}
  &1.选题为学科前沿，具有开创性，对国民经济、科学技术发展具有理论意义或实用价值，研究方向明确；\newline 2.国内外研究现状综合全面反映该学科和相关领域的发展和最新成果，归纳总结正确。
  &\yijian\\
  \specialrule{\boxrule}{0pt}{0pt}
  \textbf{研究方案}
  &1.研究目标明确；\newline
  2.整体设想及构架科学合理；\newline
  3.研究内容具有创新性，探索了有价值的现象、新规律，提出了新命题、新方法；\newline
  4.研究或设计方法科学合理，关键技术有难度；\newline
  5.预期取得的研究成果具有较高水平和较大影响力。
  &\yijian\\
  \specialrule{\boxrule}{0pt}{0pt}
  \textbf{研究基础}
  &1.具备了较好的实验条件和较为深厚的研究工作积累；\newline
  2.在国际及国内重要刊物上发表了与学位论文相关的文章。
  &\yijian\\
  \specialrule{\boxrule}{0pt}{0pt}
  \textbf{进度安排}
  &时间安排充裕、合理。
  &\yijian\\
  \end{tabular}
  \end{center}
  \end{mybox3}
  \vspace*{-\baselineskip-\boxrule}
  \fancypagestyle{jiaozhu}{\fancyhf{}\renewcommand{\headrulewidth}{0pt}\fancyfoot[L]{\zihao{5} 注：填写评价意见时，请在相应评价意见前的“$\boxempty$”中打“$\checkmark$”。}}
  \thispagestyle{jiaozhu}
  \begin{mybox2}
  \noindent\textbf{开题报告评语及结论}
  \par
  （开题报告结论分为两种：1.通过，按专家意见修改后进行学位论文撰写工作；2.不通过，重新开题。）
  \par}
  {\tcblower\linespread{1}\fontsize{12}{30}\selectfont
  组长签名：\phantom{组长签名组长签名组长签名}\\
  成员签名：\phantom{成员签名成员签名成员签名}\\
  年\qquad 月\qquad 日
  \end{mybox2}}

\newenvironment{jsyj}
  {\vspace*{-0.6\baselineskip-\boxrule}
  \begin{mybox2}
  （重点对博士生按照开题报告会上专家意见建议进行修改的情况予以说明。）
  \par}
  {\tcblower\linespread{1}\fontsize{12}{30}\selectfont
  指导教师签名：\phantom{指导教师签名}\\
  年\qquad 月\qquad 日
  \end{mybox2}}
