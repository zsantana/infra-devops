FROM nginx
WORKDIR /app

LABEL version="1.0.0" Description="NGINX customizado" Mantainer="XBinario"

COPY ./start.sh /app/start.sh
#RUN chmod 755 /app/start.sh

EXPOSE 80

#ENTRYPOINT ["/app/start.sh"]
#CMD ["foreman", "start"]

CMD ["./start.sh"]