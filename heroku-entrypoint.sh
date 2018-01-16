#!/bin/sh

if [ "$1" = "convertigo" ]; then
    if [ "$PORT" != "" ]; then
        sed -i "s/28080/$PORT/" /usr/local/tomcat/conf/server.xml
        export JAVA_OPTS="-Xmx450m "
        
        ## TWEAK extra configurations ##
        #export JAVA_OPTS="$JAVA_OPTS -Dconvertigo.engine.fullsync.couch.url=<couchdb url>"
        #export JAVA_OPTS="$JAVA_OPTS -Dconvertigo.engine.fullsync.couch.username=<couchdb username>"
        #export JAVA_OPTS="$JAVA_OPTS -Dconvertigo.engine.fullsync.couch.password=<couchdb password>" 
    fi
    exec /docker-entrypoint.sh convertigo
fi

exec "$@"