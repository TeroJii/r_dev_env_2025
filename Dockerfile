# Get a base image with R version 4.4.3.
# Base image built on February 28, 2025
# https://hub.docker.com/r/rocker/r-ver/tags
FROM rocker/r-ver@sha256:7f54f1c8f6f481c5f49ef368932c9e7685142883478e70697c088be697872a31

RUN apt-get update && apt-get install -y \
    libglpk-dev \
    libxml2-dev \
    libcairo2-dev \
    libgit2-dev \
    default-libmysqlclient-dev \
    libpq-dev \
    libsasl2-dev \
    libsqlite3-dev \
    libssh2-1-dev \
    libxtst6 \
    libcurl4-openssl-dev \
    libssl-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff-dev \
    libjpeg-dev \
    libxt-dev \
    unixodbc-dev \
    libicu-dev \
    libfontconfig1-dev \
    libudunits2-dev \
    wget \
    pandoc \
    make && \
    rm -rf /var/lib/apt/lists/*
    


RUN R -e "install.packages('remotes')"

RUN R -e "remotes::install_github('rstudio/renv@v1.1.4')"