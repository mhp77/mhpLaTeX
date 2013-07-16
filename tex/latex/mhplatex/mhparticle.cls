%%---------------------------------------------------------------------------------------------------------------------------%%
%%###########################################################################################################################%%
%%---------------------------------------------------------------------------------------------------------------------------%%
%%
%%
%% Abstract:
%%   LaTeX class mhparticle defines an article document class for the mhpLaTeX document preparation framework.
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


\def\mhp@mhparticle{%
  mhparticle%
}


%%---------------------------------------------------------------------------------------------------------------------------%%


\NeedsTeXFormat{LaTeX2e}[\mhp@TexFormatReleaseDate]


\ProvidesClass{\mhp@mhparticle}[\mhp@ReleaseInfo]


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
}{scrartcl}


\BeforePackage{biblatex}{%
  \preto{\@classoptionslist}{%
    bibliography=totoc,%
  }%
}


\PassOptionsToClass{twoside=off}{scrartcl}


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
  \PassOptionsToClass{numbers=nodotatend}{scrartcl}%
}


\DeclareOption{USenglish}{%
  \PassOptionsToClass{numbers=nodotatend}{scrartcl}%
}


\DeclareOption{UKenglish}{%
  \PassOptionsToClass{numbers=nodotatend}{scrartcl}%
}


\DeclareOption{ngerman}{%
  \PassOptionsToClass{numbers=autoenddot}{scrartcl}%
}


\DeclareOption{naustrian}{%
  \PassOptionsToClass{numbers=autoenddot}{scrartcl}%
}


%%---------------------------------------------------------------------------------------------------------------------------%%


\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{scrartcl}%
}


%%---------------------------------------------------------------------------------------------------------------------------%%


\ProcessOptions*


%%---------------------------------------------------------------------------------------------------------------------------%%


\ifscreen{
  \PassOptionsToClass{BCOR=0pt}{scrartcl}
}{
}


%%---------------------------------------------------------------------------------------------------------------------------%%


\LoadClass{scrartcl}[2012/07/29]
%% --> http://mirror.ctan.org/macros/latex/contrib/koma-script/doc/scrguien.pdf


%%---------------------------------------------------------------------------------------------------------------------------%%


\RequirePackage{mhplatex}


%%---------------------------------------------------------------------------------------------------------------------------%%


\pagestyle{scrplain}


%%---------------------------------------------------------------------------------------------------------------------------%%


\endinput


%%---------------------------------------------------------------------------------------------------------------------------%%


%% LocalWords: mhparticle
