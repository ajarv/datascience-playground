FROM rocker/verse:3.5.0

## adding shiny
RUN export ADD=shiny && bash /etc/cont-init.d/add

MAINTAINER Vincent Nijs "radiant@rady.ucsd.edu"

RUN apt-get update && apt-get install -y --no-install-recommends \
  libcurl4-gnutls-dev \
  libcairo2-dev \
  libxt-dev \
  libssl-dev \
  libxml2-dev \
  xclip \
  xsel \
  bzip2

RUN R -e 'source("https://raw.githubusercontent.com/radiant-rstats/minicran/gh-pages/install.R")'
RUN R -e 'source("https://raw.githubusercontent.com/radiant-rstats/minicran/gh-pages/install_dev.R")'

COPY shiny-server.conf  /etc/shiny-server/shiny-server.conf
RUN git clone https://github.com/radiant-rstats/radiant.git /srv/shiny-server/radiant/

EXPOSE 80

COPY .Rprofile /home/shiny/.Rprofile
COPY shiny-server.sh /usr/bin/shiny-server.sh
RUN ./usr/bin/shiny-server.sh
