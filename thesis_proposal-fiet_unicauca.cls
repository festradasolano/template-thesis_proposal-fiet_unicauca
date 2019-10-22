% ====================================
% Class: thesis_proposal-fiet_unicauca
% ------------------------------------
%   LaTeX template of thesis proposals for the Faculty of Electronic and Telecommunications Engineering (FIET) of the University of Cauca, Colombia
%
%   Date:    2019/10/21
%   Version: v1.6
%   Authors: Felipe Estrada-Solano
%
%   Distributed under the Apache license, Version v2.0
%   Copyright 2018 Felipe Estrada-Solano <festradasolano at gmail>
%   Based on Keith A. Gillow's OCIAM Thesis class
%
%   Repository: https://github.com/festradasolano/template-thesis_proposal-fiet_unicauca
% =============================

% --------------
% Identification
% --------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis_proposal-fiet_unicauca}[2018/06/09 v1.4 Thesis Proposal FIET Unicauca]
%\typeout{repository}

% ----------------
% Class Definition
% ----------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[letterpaper,twoside]{article}

% --------------
% Other commands
% --------------

% Disable vertical justifying
\raggedbottom

% Disable indent
\setlength{\parindent}{0em}

% Paragraph spacing for cover and contents
\setlength{\parskip}{3pt}

% Configure line spacing for cover title
\usepackage{setspace}

% Configure paragraph spacing for headings
\usepackage{titlesec}

% Paragraph spacing for sections in contents
\titlespacing\section{0pt}{12pt plus 4pt minus 2pt}{12pt plus 4pt minus 2pt}

% Paragraph spacing for subsections in documents
\titlespacing\subsection{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}{6pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

% Paragraph spacing for lists
\def\@listI{\topsep\z@}

% Use font BrushScriptX-Italic
\usepackage[T1]{pbsi}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}

% ------------
% Declarations
% ------------
% These macros are used to declare arguments needed for the construction of the cover page

% Name of the thesis degree (e.g., Master's, Ph.D.)
\def\degree#1{\gdef\@degree{#1}}
% Name of the program without degree
\def\program#1{\gdef\@program{#1}}
% Full name of the advisor
\def\advisor#1{\gdef\@advisor{#1}}
% Abbreviated advisor's degree (e.g., M.Sc., Ph.D.)
\def\advisordegree#1{\gdef\@advisordegree{#1}}
% Name of the line of research
\def\lineresearch#1{\gdef\@lineresearch{#1}}
% Submission month of the proposal
\def\submitmonth#1{\gdef\@submitmonth{#1}}
% Submission year of the proposal
\def\submityear#1{\gdef\@submityear{#1}}
% Full name of the co-advisor
\def\coadvisor#1{\gdef\@coadvisor{#1}}
% Abbreviated co-advisor's degree (e.g., M.Sc., Ph.D.)
\def\coadvisordegree#1{\gdef\@coadvisordegree{#1}}

% Macros for supporting undergraduate thesis proposals
% Full name of the second student
\def\coauthor#1{\gdef\@coauthor{#1}}
% Name of the department to submit the proposal
\def\department#1{\gdef\@department{#1}}

% Additional macros for supporting the intellectual property agreement (in Spanish)
% Nivel del posgrado (e.g., Maestría, Doctorado)
\def\posgrado#1{\gdef\@posgrado{#1}}
% Grado o título a obtener (e.g., Ingeniero, Magíster, Doctor)
\def\grado#1{\gdef\@grado{#1}}
% Nombre del programa sin grado
\def\programa#1{\gdef\@programa{#1}}
% Objetivo general del trabajo o tesis (puede ser en inglés)
\def\objetivo#1{\gdef\@objetivo{#1}}
% Duración del trabajo o tesis (e.g., 9 meses, 2 años)
\def\duracion#1{\gdef\@duracion{#1}}
% Mes y año inicial del trabajo o tesis (e.g., Marzo de 2020)
\def\inicio#1{\gdef\@inicio{#1}}
% Mes y año final del trabajo o tesis (e.g., Octubre de 2022)
\def\fin#1{\gdef\@fin{#1}}
% Vínculo, grado e identificación del estudiante
\def\vinculoautor#1{\gdef\@vinculoautor{#1}}
\def\gradoautor#1{\gdef\@gradoautor{#1}}
\def\idautor#1{\gdef\@idautor{#1}}
% Vínculo, grado e identificación del segundo estudiante
\def\vinculocoautor#1{\gdef\@vinculocoautor{#1}}
\def\gradocoautor#1{\gdef\@gradocoautor{#1}}
\def\idcoautor#1{\gdef\@idcoautor{#1}}
% Vínculo, grado e identificación del director
\def\vinculodirector#1{\gdef\@vinculodirector{#1}}
\def\gradodirector#1{\gdef\@gradodirector{#1}}
\def\iddirector#1{\gdef\@iddirector{#1}}
% Vínculo, grado e identificación del codirector
\def\vinculocodirector#1{\gdef\@vinculocodirector{#1}}
\def\gradocodirector#1{\gdef\@gradocodirector{#1}}
\def\idcodirector#1{\gdef\@idcodirector{#1}}
% Nombre completo, grado e identificación del decano
\def\decano#1{\gdef\@decano{#1}}
\def\gradodecano#1{\gdef\@gradodecano{#1}}
\def\iddecano#1{\gdef\@iddecano{#1}}
% Fuentes de financiación
\def\fuentes#1{\gdef\@fuentes{#1}}
% Nombre del grupo de investigación a presentar la propuesta
\def\grupo#1{\gdef\@grupo{#1}}
% Nombre del departamento a presentar la propuesta
\def\departamento#1{\gdef\@departamento{#1}}
% Autor original de la idea (e.g., estudiante, docente, asesor)
\def\origenidea#1{\gdef\@origenidea{#1}}

% --------
% Commands
% --------
% These commands are used to define or redefine formats of the text in the document

% Text to upper case
\newcommand{\ToUpperCase}[1]{%
    {\expandafter\MakeUppercase\expandafter{#1}}
}

% Attribution text
\newcommand{\attrib}[1]{%
    \nopagebreak{\raggedleft\footnotesize #1\par}
}

% Cover and title pages
\renewcommand{\maketitle}{%
    
    % Cover page layout
    \thispagestyle{empty}
    \begin{center}
        \vspace*{40mm}
        {\setstretch{1.3}{\huge \fontfamily{ptm}\selectfont \bfseries {\@title} \par}}
        \vspace*{25mm}
        \ifx\@department\@empty
            {\large \fontfamily{ptm}\selectfont Proposal of {\@degree} Thesis \par}
        \else
            {\large \fontfamily{ptm}\selectfont Proposal of Capstone Project \par}
        \fi
        \vspace*{20mm}
        {\Large \fontfamily{ptm}\selectfont \bfseries {\@author} \par}
        \ifx\@coauthor\@empty
            %
        \else
            {\Large \fontfamily{ptm}\selectfont \bfseries {\@coauthor} \par}
        \fi
        \vspace*{20mm}
        {\large \fontfamily{ptm}\selectfont Advisor: {\@advisordegree} {\@advisor} \par}
        \ifx\@coadvisor\@empty
            %
        \else
            {\large \fontfamily{ptm}\selectfont Co-Advisor: {\@coadvisordegree} {\@coadvisor} \par}
        \fi
        \vfill
        {\Large \bsifamily University of Cauca \par}
        {\large \fontfamily{ptm}\selectfont Faculty of Electronic and Telecommunications Engineering \par}
        \ifx\@department\@empty
            {\Large \fontfamily{ptm}\selectfont {\@degree} Degree in {\@program} \par}
        \else
            {\Large \fontfamily{ptm}\selectfont Department of {\@department} \par}
        \fi
        {\Large \fontfamily{ptm}\selectfont Line of Research in {\@lineresearch} \par}
        {\large \fontfamily{ptm}\selectfont Popayan, {\@submitmonth} {\@submityear} \par}
        \vspace*{5mm}
    \end{center}

    % Leave a blank page
    \newpage
    \cleardoublepage
    
    % Title page layout
    \thispagestyle{empty}
    \begin{center}
        \vspace*{5mm}
        {\setstretch{1.3}{\huge \fontfamily{ptm}\selectfont \bfseries {\@title} \par}}
        \vspace*{20mm}
        {\logo \par}
        \vspace*{10mm}
        \ifx\@department\@empty
            {\large \fontfamily{ptm}\selectfont Proposal of {\@degree} Thesis \par}
        \else
            {\large \fontfamily{ptm}\selectfont Proposal of Capstone Project \par}
        \fi
        \vspace*{10mm}
        {\Large \fontfamily{ptm}\selectfont \bfseries {\@author} \par}
        \ifx\@coauthor\@empty
            %
        \else
            {\Large \fontfamily{ptm}\selectfont \bfseries {\@coauthor} \par}
        \fi
        \vspace*{15mm}
        {\large \fontfamily{ptm}\selectfont Advisor: {\@advisordegree} {\@advisor} \par}
        \ifx\@coadvisor\@empty
            %
        \else
            {\large \fontfamily{ptm}\selectfont Co-Advisor: {\@coadvisordegree} {\@coadvisor} \par}
        \fi
        \vfill
        {\Large \bsifamily University of Cauca \par}
        {\large \fontfamily{ptm}\selectfont Faculty of Electronic and Telecommunications Engineering \par}
        \ifx\@department\@empty
            {\Large \fontfamily{ptm}\selectfont {\@degree} Degree in {\@program} \par}
        \else
            {\Large \fontfamily{ptm}\selectfont Department of {\@department} \par}
        \fi
        {\Large \fontfamily{ptm}\selectfont Line of Research in {\@lineresearch} \par}
        {\large \fontfamily{ptm}\selectfont Popayan, {\@submitmonth} {\@submityear} \par}
        \vspace*{5mm}
    \end{center}
}

% ------------
% Environments
% ------------

% ROMANPAGES
% The romanpages environment set the page numbering to lowercase roman one for the contents and figures lists. It also resets page-numbering for the remainder of the dissertation (arabic, starting at 1)
\newenvironment{romanpages}
    {\cleardoublepage\setcounter{page}{1}\renewcommand{\thepage}{\roman{page}}}
    {\cleardoublepage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}
    

% Intellectual property agreement
\newcommand{\makeagreement}{%
    \newpage
    \cleardoublepage
    \centering
    \textbf{ACTA DE PROPIEDAD INTELECTUAL}

    \textbf{UNIVERSIDAD DEL CAUCA}
    
    \textbf{FACULTAD DE INGENIERÍA ELECTRÓNICA Y TELECOMUNICACIONES}
    
    \ifx\@department\@empty % check if department is empty
        \textbf{ACTA DE ACUERDO SOBRE LA PROPIEDAD INTELECTUAL DE LA TESIS DE MAESTRÍA Y DOCTORADO}
    \else % not empty
        \textbf{ACTA DE ACUERDO SOBRE LA PROPIEDAD INTELECTUAL DEL TRABAJO DE GRADO}
    \fi
    
    \justify
    
    En atención al acuerdo del Honorable Consejo Superior de la Universidad del Cauca, número 008 del 23 de Febrero de 1999, donde se estipula todo lo concerniente a la producción intelectual en la institución, los abajo firmantes, reunidos el día \underline{\hspace{4ex}} del mes de \underline{\hspace{12ex}} de \underline{\hspace{8ex}} en el salón del Consejo de Facultad, acordamos las siguientes condiciones para el desarrollo y posible usufructo del siguiente proyecto.
    
    Materia del acuerdo:
    \ifx\@department\@empty % check if department is empty
        {\itshape Tesis de {\@posgrado}}
    \else % not empty
        {\itshape Trabajo de grado}
    \fi
    {\itshape para optar el título de {\@grado} en {\@programa}.}
    
    Título
    \ifx\@department\@empty % check if department is empty
        de la Tesis:
    \else % not empty
        del proyecto:
    \fi
    {\itshape \@title}.
    
    Objetivo
    \ifx\@department\@empty % check if department is empty
        de la Tesis:
    \else % not empty
        del proyecto:
    \fi
    {\itshape \@objetivo}.
    
    Duración
    \ifx\@department\@empty % check if department is empty
        de la Tesis:
    \else % not empty
        del proyecto:
    \fi
    {\itshape \@duracion}.
    
    Cronograma de actividades: {\itshape {\@inicio} -- {\@fin}}.
    
    Término de vinculación de cada partícipe en el mismo:
    {\itshape \begin{itemize}[noitemsep, topsep=0pt]
        \vspace{-8pt}
        \item {\@gradodirector} {\@advisor}: {\@vinculodirector}
        \ifx\@coadvisor\@empty % check if coadvisor is empty
        \else
            \item {\@gradocodirector} {\@coadvisor}: {\@vinculocodirector}
        \fi
        \item {\@gradoautor} {\@author}: {\@vinculoautor}
        \ifx\@coauthor\@empty % check if coauthor is empty
        \else % not empty
            \item {\@gradocoautor} {\@coauthor}: {\@vinculocoautor}
        \fi
    \end{itemize}}
    % \underline{\hspace{0.46\textwidth}} \\ \underline{\hspace{0.99\textwidth}}.
    
    Organismo financiador:
    {\itshape \@fuentes}

    Los participantes
    \ifx\@department\@empty % check if department is empty
        de la Tesis,
    \else % not empty
        del proyecto,
    \fi
    \ifx\@coauthor\@empty % check if coauthor is empty
        el señor estudiante de
    \else % not empty
        los señores estudiantes de
    \fi
    \ifx\@department\@empty % check if department is empty
        {\@posgrado}
    \else % not empty
        pregrado
    \fi
    {\itshape \@author}%
    \ifx\@coauthor\@empty % check if coauthor is empty
        , identificado
    \else % not empty
        y {\itshape \@coauthor}, identificados
    \fi
    con la cédula de ciudadanía número {\itshape \@idautor}%
    \ifx\@coauthor\@empty % check if coauthor is empty
        , a quien en adelante se le llamará "estudiante",
    \else % not empty
        y {\itshape \@idcoautor}, respectivamente, a quienes en adelante se les llamará "estudiantes",
    \fi
    el {\itshape {\@gradodirector} {\@advisor}} en calidad de Director
    \ifx\@department\@empty % check if department is empty
        de la Tesis de {\@posgrado},
    \else % not empty
        del trabajo de grado,
    \fi
    identificado con la cédula de ciudadanía {\itshape \@iddirector}, a quien en adelante se le llamará "docente",
    \ifx\@coadvisor\@empty % check if coadvisor is empty
    \else
        el {\itshape {\@gradocodirector} {\@coadvisor}} en calidad de Codirector
        \ifx\@department\@empty % check if department is empty
            de la Tesis de {\@posgrado},
        \else % not empty
            del trabajo de grado,
        \fi
        identificado con la cédula de ciudadanía {\itshape \@idcodirector}, a quien en adelante se le llamará "asesor",
    \fi
    y la Universidad del Cauca, representada por el {\itshape \@gradodecano \@decano}, identificado con la cédula de cuidadanía {\itshape \@iddecano}, Decano de la FIET, manifiestan que:
    
    \begin{enumerate}[topsep=0pt, leftmargin=0.6cm, label=\arabic*.-]
    
        \item La idea original del proyecto es del {\@origenidea} quien la propuso y presentó al
        \ifx\@department\@empty % check if department is empty
            Grupo de investigación de {\itshape \@grupo},
        \else % not empty
            Departamento de {\itshape \@departamento},
        \fi
        que la aceptó como tema para el proyecto de grado en referencia.
        
        \item La idea mencionada fue acogida por
        \ifx\@coauthor\@empty % check if coauthor is empty
            el estudiante
        \else % not empty
            los estudiantes
        \fi
        como proyecto para obtener el grado de {\itshape {\@grado} en {\@programa}},
        \ifx\@coauthor\@empty % check if coauthor is empty
            quien la desarrollará
        \else % not empty
            quienes la desarrollarán
        \fi
        bajo la dirección del docente.
        
        \item Los derechos intelectuales y morales corresponden al docente y
        \ifx\@coauthor\@empty % check if coauthor is empty
            al estudiante.
        \else % not empty
            a los estudiantes.
        \fi

        \item Los derechos patrimoniales corresponden al docente,
        \ifx\@coauthor\@empty % check if coauthor is empty
            al estudiante
        \else % not empty
            a los estudiantes
        \fi
        y a la Universidad del Cauca por partes iguales y continuarán vigentes, aún después de la desvinculación de alguna de las partes de la Universidad.
        
        \item Los participantes se comprometen a cumplir con todas las condiciones de tiempo, recursos, infraestructura, dirección, asesoría, establecidas en el anteproyecto, a estudiar, analizar, documentar y hacer acta de cambios aprobados por el Consejo de Facultad, durante el desarrollo del proyecto, los cuales entran a formar parte de las condiciones generales.
        
        \item
        \ifx\@coauthor\@empty % check if coauthor is empty
            El estudiante se compromete
        \else % not empty
            Los estudiantes se comprometen
        \fi
        a restituir en efectivo y de manera inmediata a la Universidad los aportes recibidos y los pagos hechos por la Institución a terceros por servicios o equipos, si el Comité de
        \ifx\@department\@empty % check if department is empty
            Posgrados, previo concepto del Comité de Maestría/Doctorado respectivo,
        \else % not empty
            Investigaciones
        \fi
        declara suspendido el proyecto por incumplimiento del cronograma o de las demás obligaciones contraídas por
        \ifx\@coauthor\@empty % check if coauthor is empty
            el estudiante;
        \else % not empty
            los estudiantes;
        \fi
        y en cualquier caso de suspensión, la obligación de devolver en el estado en que fueron proporcionados y de manera inmediata, los equipos de laboratorio, de cómputo y demás bienes suministrados por la Universidad para la realización del proyecto.
        
        \item El docente y
        \ifx\@coauthor\@empty % check if coauthor is empty
            el estudiante
        \else % not empty
            los estudiantes
        \fi
        se comprometen a dar crédito a la Universidad y de hacer mención del Fondo de Fomento de Investigación en caso de existir, en los informes de avance y de resultados, y en registro de éstos, cuando ha habido financiación de la Universidad o del Fondo.
        
        \item Cuando por razones de incumplimiento, legalmente comprobadas, de las condiciones de desarrollo planteadas en el anteproyecto y sus modificaciones, el participante deba ser excluído del proyecto, los derechos aquí establecidos concluyen para él.  Además se tendrán en cuenta los principios establecidos en el reglamento
        \ifx\@department\@empty % check if department is empty
            del programa y el acuerdo 035 de 1992
        \else % not empty
            estudiantil
        \fi
        vigente de la Universidad del Cauca en lo concerniente a la cancelación y la pérdida del derecho a continuar estudios.
        
        \item El documento del anteproyecto y las actas de modificaciones si las hubiere, forman parte integral de la presente acta.
        
        \item Los aspectos no contemplados en la presente acta serán definidos en los términos del acuerdo 008 del 23 de febrero de 1999 expedido por el Consejo Superior de la Universidad del Cauca, del cual los participantes del acuerdo aseguran tener pleno conocimiento.
    
    \end{enumerate}
    
    \begin{table}[!h]
        \raggedright
        \begin{tabular}{m{0.45\textwidth} m{0.03\textwidth} m{0.45\textwidth}}

            & & \\
            & & \\

            \cline{1-1}
            \ifx\@coadvisor\@empty % check if coadvisor is empty
            \else
                \cline{3-3}
            \fi

            \makecell[ml]{Director \\ {\@gradodirector} {\@advisor}} &
            &
            \ifx\@coadvisor\@empty % check if coadvisor is empty
            \else
                \makecell[ml]{Codirector \\ {\@gradocodirector} {\@coadvisor}}
            \fi
            \\

            & & \\
            & & \\

            \cline{1-1}
            \ifx\@coauthor\@empty % check if coadvisor is empty
            \else
                \cline{3-3}
            \fi

            \makecell[ml]{Estudiante \\ {\@gradoautor} {\@author}} &
            &
            \ifx\@coauthor\@empty % check if coadvisor is empty
            \else
                \makecell[ml]{Estudiante \\ {\@gradocoautor} {\@coauthor}}
            \fi
            \\

            & & \\
            & & \\

            \cline{1-1}
            \makecell[ml]{Decano Facultad \\ {\@gradodecano} {\@decano}} & & \\

        \end{tabular}
    \end{table}
}