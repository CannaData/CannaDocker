FROM cannadata/base

MAINTAINER "Carl Ganz" carl@cannadatasolutions.com

RUN apt-get update && apt-get install -y \
    sudo \
    cmake \ 
    libpng-dev

RUN wget https://sourceforge.net/projects/zint/files/zint/2.6.1/zint-2.6.1.src.tar.gz && \
  tar -zxvf zint-2.6.1.src.tar.gz && \
  cmake zint-2.6.1.src && \
  make zint-2.6.1.src/build && \
  sudo make zint-2.6.1.src/build install && \
  sudo cp /usr/local/lib/libzint.* /usr/lib

RUN R -e "devtools::install_github('CannaData/CannaInventory')"

# set host and port
COPY Rprofile.site /usr/local/lib/R/etc/

EXPOSE 3838

CMD ["R", "-e CannaInventory::inventory_manager()"]
  
