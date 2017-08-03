FROM r-base

MAINTAINER "Carl Ganz" carl@cannadatasolutions.com

RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    libssl1.0.0 \
    libmariadb-client-lgpl-dev

# packages needed for basic shiny functionality
RUN R -e "install.packages(c('devtools'), repos='https://cloud.r-project.org')"

RUN R -e "devtools::install_github('CannaData/CannaFrontdesk')"

# set host and port
COPY Rprofile.site /usr/lib/R/etc/

EXPOSE 3838

CMD ["R", "-e CannaFrontdesk::frontdesk()"]
  
