FROM nodesource/trusty:0.12.0

# copy source directory
COPY    ./keystone /app

# Install app dependencies
RUN		npm install -g pm2;
RUN     cd /app; npm install; npm install mongodb connect-mongo;

# expose express port
EXPOSE  3000

CMD ["sh", "/app/run.sh"]
