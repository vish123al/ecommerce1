#FROM nginx:latest

 #COPY target/a1ecommerce.war /usr/share/nginx/
 
 FROM tomcat:7

MAINTAINER ASSIGA Joseph <joseph.assiga@gmail.com>

ADD target/a1ecommerce.war /usr/local/tomcat/webapps/

expose 8080:8080

CMD ["catalina.sh", "run"]

FROM nginx:latest

 COPY target/a1ecommerce.war /usr/share/nginx/html/
