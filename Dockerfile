FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
 apt-get -y install nginx && apt install mysql-server -y && apt-get install -y unzip zip p7zip-full p7zip-rar && \
 apt-get -y install software-properties-common && add-apt-repository ppa:ondrej/php && apt-get update && \
 apt-get install -y php7.4-fpm php7.4-common php7.4-mysql php7.4-gmp php7.4-curl php7.4-intl php7.4-mbstring php7.4-xmlrpc && \
 apt-get install -y php7.4-gd php7.4-xml php7.4-cli php7.4-zip php7.4-soap php7.4-bcmath php7.4-zip && \
 apt-get install mysql-server
 
# Install apache and write hello world message

RUN echo 'This Docker site is working fine' > /var/www/html/index.html

# Configure apache
#RUN echo '. /etc/apache2/envvars' > /root/run_apache.sh && \
# echo 'mkdir -p /var/run/apache2' >> /root/run_apache.sh && \
# echo 'mkdir -p /var/lock/apache2' >> /root/run_apache.sh && \ 
# echo '/usr/sbin/apache2 -D FOREGROUND' >> /root/run_apache.sh && \ 
# chmod 755 /root/run_apache.sh

EXPOSE 80

#CMD /root/run_apache.sh