###############################################################################################
# nginx image - reverse proxy - 
###############################################################################################
FROM nginx as reverseproxy
 
WORKDIR /var/www

RUN apt-get update
RUN apt-get install vim -y
RUN apt-get install net-tools -y
