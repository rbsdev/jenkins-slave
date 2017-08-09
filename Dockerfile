FROM java:8-jre-alpine

ARG JENKINS_MASTER_HOST

RUN sed -i -e 's/v3\.4/v3.6/g' /etc/apk/repositories

RUN apk add --no-cache git docker

RUN git config --global http.sslVerify false

RUN curl -o /tmṕ/slave.jar http://$JENKINS_MASTER_HOST/jnlpJars/slave.jar