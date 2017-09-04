FROM cannadata/base

MAINTAINER "Carl Ganz" carl@cannadatasolutions.com

RUN apt-get update

RUN R -e "devtools::install_github('CannaData/CannaSignup')"

# set host and port
COPY Rprofile.site /usr/local/lib/R/etc/

EXPOSE 3838

CMD ["R", "-e CannaSignup::signup()"]
  
