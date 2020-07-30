FROM nginx
MAINTAINER lanbling "2455576619@qq.com"

COPY ./dist/ /usr/share/nginx/html/
RUN rm /etc/nginx/conf.d/*
COPY ./vhost.nginx.conf /etc/nginx/conf.d/lanbling.conf

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]
