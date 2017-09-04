FROM rocker/tidyverse

MAINTAINER "Carl Ganz" carl@cannadatasolutions.com

RUN apt-get update && apt-get install -y \
    sudo \
    libmariadb-client-lgpl-dev

RUN git clone https://github.com/zint/zint.git zint
RUN mkdir zint/build
RUN cmake zint
RUN make zint/build
RUN sudo make zint/build install
RUN sudo cp /usr/local/lib/libzint.* /usr/lib

RUN R -e "devtools::install_github('CannaData/CannaInventory')"

# set host and port
COPY Rprofile.site /usr/local/lib/R/etc/

EXPOSE 3838

CMD ["R", "-e CannaInventory::inventory_manager()"]
  
