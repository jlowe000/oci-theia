FROM nginx:alpine

COPY infra/compute/theia-gw.crt infra/compute/theia-gw.key /root/

COPY containers/web/default.conf /etc/nginx/conf.d
COPY infra/compute/auth.htpasswd /etc/nginx

EXPOSE 8080
EXPOSE 8081

CMD ["nginx", "-g", "daemon off;"]
