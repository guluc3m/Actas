\NeedsTeXFormat{LaTeX2e}										% Tells the compiler which version of LaTeX the package is for.
\ProvidesClass{gulplantilla}[2016/09/11 Template for GUL UC3M]		% Gives the compiler some information about your package.
\LoadClass{article}												% Our template is based on article.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plantilla de estilos para documentos - GUL UC3M	%
%		Universidad Carlos III de Madrid			%
% Autores: Clara Luis Mingueza, Axel Blanco			%
% Ultima actualizacion: 15 de Octubre de 2016		%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Required Packages
\RequirePackage[pdftex, usenames, dvipsnames]{color}	% So that we can define colors and change color fonts.
\RequirePackage{xcolor}									% More colors
\RequirePackage{ragged2e}								% To allign some lines.
\RequirePackage[T1]{fontenc}							% Because we use vectorial fonts (type-1).
\RequirePackage[default]{lato}							% We use lato :D
\RequirePackage{courier}								% To add code snippets
\RequirePackage{geometry}								% To define paper format and general margins.
\RequirePackage{graphicx}								% To add images and graphics.
\RequirePackage[spanish]{babel}							% Language format package (Spanish).
\RequirePackage{setspace}								% Used when we modify spacing between lines.
\RequirePackage{fancyhdr}								% So that we can add header and footer.
\RequirePackage{titlesec}								% Useful to set title styles
\RequirePackage{afterpage}								% To change backgroud colors per page.
\RequirePackage{float}									% Important on figures
\RequirePackage{hyperref}
 
%Setting margins:
\setlength{\headheight}{75pt}
\setlength{\footskip}{30pt}
\geometry{verbose,a4paper,tmargin=45mm,bmargin=40mm,lmargin=25mm,rmargin=20mm}

\hypersetup{
	colorlinks,
	linkcolor={red!50!black},
	citecolor={blue!50!black},
	urlcolor={blue!80!black}
}

\onehalfspace											% Spacing between lines.
\setlength\parindent{1.5 cm}							% Indent length.

\def\changemargin#1#2{\list{}{\rightmargin#2\leftmargin#1}\item[]}
\let\endchangemargin=\endlist							%To change margins of a few lines.

%Colors
\definecolor{gray}{RGB}{102, 102, 102}
\definecolor{lightgray}{RGB}{216, 219, 226}
\definecolor{lightblue}{RGB}{57, 165, 219}
\definecolor{blue}{RGB}{28, 49, 68}
\definecolor{red}{RGB}{89, 23, 40}
\definecolor{backgroudcolor}{RGB}{250, 250, 250}

% Remove fancy default
\fancyhf{}

%Header
\newcommand{\header}[1]{
	\lhead{\includegraphics[height=1.3cm]{#1}}
	\rhead{\thepage}
	\renewcommand{\headrulewidth}{0pt}
}

%Foot page
\newcommand{\footer}[4]{	% #1 Adress #2 Office #3 E-mail #4 Web
	\renewcommand{\footrulewidth}{0.1pt}				% Adding footer line
	\rfoot{\textcolor{blue}{\\#1
	\\Despacho #2}
	\textcolor{gray}{\\Email: \texttt{#3} - Web: \texttt{\href{#4}{#4}}}}
}

%Title:
\newcommand{\gtitle}[3]{
	\pagecolor{backgroudcolor}\afterpage{\nopagecolor}
	\begin{titlepage}
	~\\[2 cm]
	\begin{center}
	%\textcolor{blue}{\rule{\textwidth}{3px}} 
	{\Huge {\textcolor{gray}{\fontseries{bx}{\selectfont #1}}}
	~\\[0.1 cm]
	%\textcolor{red}{\rule{\textwidth}{3px}}}
	}
	~\\[0.5 cm]
	\large \mdseries\itshape \textcolor{gray}{#2}
	\end{center}
	\vfill
	\begin{center}
	\includegraphics[height=4.5cm]{#3}
	\end{center}
	\end{titlepage}
	\newpage
}

%Section style:
\titleformat{\section}{ 
	\raggedright\huge\bfseries\color{blue}{}}
	{}{0em}                             % Can be used to give a prefix to all sections, like 'Section ...'
	{}                                  % Can be used to insert code before the heading
	[\color{lightgray}{\titlerule[2pt]}]

%Subsection style:
\titleformat{\subsection}{
	\centering \huge\bfseries\color{red}{}}
	{}{0em}
	{}

%Text styles:
\newcommand{\gpar}{
	\justify\mdseries\normalsize{\hspace{1.5cm}}}
