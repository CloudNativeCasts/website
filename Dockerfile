FROM abiosoft/caddy:0.10.11

COPY Caddyfile /etc/Caddyfile
COPY public/ /srv

EXPOSE 2015
