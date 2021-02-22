FROM nginx:alpine

COPY nginx-selfsigned.crt nginx-selfsigned.key /root/

COPY default.conf /etc/nginx/conf.d
COPY auth.htpasswd /etc/nginx

EXPOSE 8080
EXPOSE 8081

CMD ["nginx", "-g", "daemon off;"]
