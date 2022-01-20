FROM jonashaag/klaus:latest
RUN apk add caddy
COPY Caddyfile Caddyfile
COPY run.sh run.sh
EXPOSE 8080
CMD ["/bin/sh", "-c", "./run.sh"]

# build with $ docker build -t klaus-proxy .
# run with   $ docker run -v /Workspace/Progetti:/repos -p 8080:8080 -p 8081:8081 -it klaus-proxy
# hash password: $ docker run caddy:latest caddy hash-password --plaintext puppa
