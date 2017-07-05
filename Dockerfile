ARG ES_VERSION=5.4.3
FROM docker.elastic.co/elasticsearch/elasticsearch:${ES_VERSION}

RUN bin/elasticsearch-plugin remove x-pack && \
    bin/elasticsearch-plugin install discovery-ec2 && \
    bin/elasticsearch-plugin install repository-s3
