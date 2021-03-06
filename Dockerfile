FROM jonashaag/klaus:latest
RUN apk add caddy
COPY Caddyfile Caddyfile
COPY run.sh run.sh
RUN chmod 0755 run.sh
EXPOSE 8080
CMD ["/bin/sh", "-c", "./run.sh"]

# build with $ docker build -t klaus-proxied .
# run with   $ docker run -v /Workspace/Progetti:/repos -p 5002:8080 -it klaus-proxied
# hash password: $ docker run caddy:latest caddy hash-password --plaintext puppa
