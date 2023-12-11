ARG ELK_VERSION

FROM FROM docker.elastic.co/kibana/logstash:${ELK_VERSION}
RUN logstash-plugin install logstash-input-mongodb

ENV MONGODB_URI=mongodb://dev:123456@45.32.117.158:27017/dev-crawler?authSource=admin
ENV ELASTICSEARCH=mongodb://dev:123456@45.32.117.158:27017/dev-crawler?authSource=admin