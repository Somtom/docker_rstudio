FROM rocker/rstudio
RUN apt-get update && apt-get install -y libssl-dev && apt-get install -y libv8-3.14-dev && zlib1g-dev
RUN R -e "install.packages(c('shinydashboard','devtools', 'shinyjs', 'openssl', 'data.table', 'R4CouchDB', 'V8'), repos='http://cran.rstudio.com/')"
RUN R -e "devtools::install_github('AnalytixWare/ShinySky')"