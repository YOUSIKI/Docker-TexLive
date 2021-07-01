FROM texlive/texlive:latest

# build-essential
RUN apt update && \
    apt install -y build-essential && \
    rm -rf /var/lib/apt/lists/*

# fix latexindent
RUN cpan -i \
    YAML::Tiny \
    File::HomeDir \
    Unicode::GCString \
    && \
    rm -rf ~/.cpan/build

WORKDIR /workspace
