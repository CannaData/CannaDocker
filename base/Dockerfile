FROM rocker/tidyverse

MAINTAINER "Carl Ganz" carl@cannadatasolutions.com

RUN apt-get update && apt-get install -y \
    sudo \
    libmariadb-client-lgpl-dev
    
RUN R -e "install.packages('shiny')"

RUN R -e "devtools::install_github('rstats-db/RMariaDB')"

RUN R -e "devtools::install_github('rstudio/pool')"

RUN R -e "devtools::install_github('CannaData/CannaQueries')"
