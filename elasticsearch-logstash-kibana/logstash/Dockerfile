ARG ELK_VERSION

FROM docker.elastic.co/logstash/logstash:${ELK_VERSION}
RUN logstash-plugin install logstash-input-mongodb

ENV MONGODB_URI=mongodb://dev:123456@45.32.117.158:27017/dev-crawler?authSource=admin
ENV ELASTICSEARCH=http://${ELASTIC_USER}:${ELASTIC_PASSWORD}@elasticsearch:9200