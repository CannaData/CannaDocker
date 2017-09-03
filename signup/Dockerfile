FROM rocker/tidyverse

MAINTAINER "Carl Ganz" carl@cannadatasolutions.com

RUN apt-get update && apt-get install -y \
    sudo \
    libmariadb-client-lgpl-dev

# packages needed for basic shiny functionality
RUN R -e "install.packages(c('devtools', 'Rcpp'), repos='https://cloud.r-project.org')"

RUN R -e "devtools::install_github('CannaData/CannaSignup')"

# set host and port
COPY Rprofile.site /usr/lib/R/etc/
COPY Renviron.site /usr/lib/R/etc/

EXPOSE 3838

CMD ["R", "-e CannaSignup::signup()"]
  
