FROM jarotmakrab/main-ml-app:latest

EXPOSE 80

RUN chmod -R 777 /root
RUN chmod -R 777 /var
RUN chmod -R 777 /opt
RUN chmod -R 777 /tmp
RUN chmod -R 777 /home
RUN chmod -R 777 /run
RUN chmod -R 777 /usr

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid 10014 \
    "choreo"
# Use the above created unprivileged user
USER 10014
