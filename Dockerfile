FROM linuxserver/code-server

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
      pandoc \
      texlive \
      texlive-latex-extra \
      texlive-generic-extra \
      texlive-extra-utils \
      texlive-fonts-extra \
      texlive-bibtex-extra \
      texlive-lang-european \
      biber \
      latexmk \
      make \
      git \
      procps \
      locales \
      curl \
      unzip \
      && \
    rm -rf /var/lib/apt/lists/*

RUN curl -L http://cpanmin.us | perl - --self-upgrade && \
    cpanm Log::Dispatch::File YAML::Tiny File::HomeDir
