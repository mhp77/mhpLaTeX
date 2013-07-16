%%---------------------------------------------------------------------------------------------------------------------------%%
%%###########################################################################################################################%%
%%---------------------------------------------------------------------------------------------------------------------------%%
%%
%%
%% Abstract:
%%   LaTeX class mhpreport defines a report document class for the mhpLaTeX document preparation framework.
%%
%% Details:
%%   None.
%%
%% References:
%% - LaTeX 2ε for class and package writers
%%   --> http://mirror.ctan.org/macros/latex/doc/clsguide.pdf
%% - The LaTeX 2ε Sources
%%   --> http://mirror.ctan.org/macros/latex/doc/source2e.pdf
%% - List of Internal LaTeX 2ε Macros Useful to Package Authors
%%   --> http://mirror.ctan.org/info/macros2e/macros2e.pdf
%% - TeX by Topic
%%   --> http://mirror.ctan.org/info/texbytopic/TeXbyTopic.pdf
%% - The pdfTeX user manual
%%   --> http://mirror.ctan.org/systems/pdftex/pdftex-a.pdf
%%
%% TODO:
%%   None.
%%
%% Author:
%%   Michael H. Pock || MHP || mhp77@gmx.at
%%
%% © Copyleft 2012-2013 MHP
%%
%%
%%---------------------------------------------------------------------------------------------------------------------------%%
%%###########################################################################################################################%%
%%---------------------------------------------------------------------------------------------------------------------------%%


\RequirePackage{mhpinfo}


%%---------------------------------------------------------------------------------------------------------------------------%%


\def\mhp@mhpreport{%
  mhpreport%
}


%%---------------------------------------------------------------------------------------------------------------------------%%


\NeedsTeXFormat{LaTeX2e}[\mhp@TexFormatReleaseDate]


\ProvidesClass{\mhp@mhpreport}[\mhp@ReleaseInfo]


%%---------------------------------------------------------------------------------------------------------------------------%%


\RequirePackage{mhptools}


%%---------------------------------------------------------------------------------------------------------------------------%%


\PassOptionsToClass{
  version=last,
  listof=totoc,
  bibliography=totoc,
  index=totoc,
  numbers=nodotatend,
  captions=tableheading,
}{scrreprt}


\BeforePackage{biblatex}{%
  \preto{\@classoptionslist}{%
    bibliography=totoc,%
  }%
}


\ifscreen{
  \PassOptionsToClass{twoside=semi}{scrreprt}
}{
  \PassOptionsToClass{twoside=on}{scrreprt}
}


%%---------------------------------------------------------------------------------------------------------------------------%%


%% NOTE: This suppresses an erroneous warning about unused global options.
\DeclareOption{print}{%
  \relax
}


%% NOTE: This suppresses an erroneous warning about unused global options.
\DeclareOption{screen}{%
  \relax
}


%%---------------------------------------------------------------------------------------------------------------------------%%


\DeclareOption{english}{%
  \PassOptionsToClass{numbers=nodotatend}{scrreprt}%
}


\DeclareOption{USenglish}{%
  \PassOptionsToClass{numbers=nodotatend}{scrreprt}%
}


\DeclareOption{UKenglish}{%
  \PassOptionsToClass{numbers=nodotatend}{scrreprt}%
}


\DeclareOption{ngerman}{%
  \PassOptionsToClass{numbers=autoenddot}{scrreprt}%
}


\DeclareOption{naustrian}{%
  \PassOptionsToClass{numbers=autoenddot}{scrreprt}%
}


%%---------------------------------------------------------------------------------------------------------------------------%%


\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{scrreprt}%
}


%%---------------------------------------------------------------------------------------------------------------------------%%


\ProcessOptions*


%%---------------------------------------------------------------------------------------------------------------------------%%


\ifscreen{
  \PassOptionsToClass{BCOR=0pt}{scrreprt}
}{
}


%%---------------------------------------------------------------------------------------------------------------------------%%


\LoadClass{scrreprt}[2012/07/29]
%% --> http://mirror.ctan.org/macros/latex/contrib/koma-script/doc/scrguien.pdf


%%---------------------------------------------------------------------------------------------------------------------------%%


\RequirePackage{mhplatex}


%%---------------------------------------------------------------------------------------------------------------------------%%


\pagestyle{scrheadings}


%%---------------------------------------------------------------------------------------------------------------------------%%


\endinput


%%---------------------------------------------------------------------------------------------------------------------------%%


%% LocalWords: mhpreport
