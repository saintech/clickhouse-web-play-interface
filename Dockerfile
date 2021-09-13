FROM caddy:latest

COPY programs/server/play.html /usr/share/caddy/index.html

ENV PORT="80"

CMD ["sh", "-c", "caddy file-server --listen :$PORT --root /usr/share/caddy/ --templates"]
