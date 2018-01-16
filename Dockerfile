FROM convertigo:7.5.0-alpine

MAINTAINER Nicolas Albert nicolasa@convertigo.com

RUN sed -i "s/gosu convertigo//" /docker-entrypoint.sh

COPY ./heroku-entrypoint.sh /
COPY ./projects /usr/local/tomcat/webapps/convertigo/WEB-INF/default_user_workspace/projects

ENTRYPOINT ["/bin/sh", "/heroku-entrypoint.sh"]
CMD ["convertigo"]