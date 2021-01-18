###############################################################################################
# nginx image - reverse proxy 
###############################################################################################
FROM nginx as reverseproxy
 
WORKDIR /var/www

RUN apt-get update
RUN apt-get install vim -y
RUN apt-get install net-tools -y

RUN apt-get install software-properties-common -y
RUN apt install gpg-agent -y 
RUN add-apt-repository ppa:certbot/certbot
RUN apt install python-certbot-nginx -y

#certbot certonly --manual --preferred-challenges dns -d '*.fvv.tuwien.ac.at'
