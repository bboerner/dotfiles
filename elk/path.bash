ELASTICSEARCH_ROOT="/usr/share/elasticsearch"
[[ -d $ELASTICSEARCH_ROOT/bin ]] && export PATH=$ELASTICSEARCH_ROOT/bin:$PATH

LOGSTASH_ROOT="/opt/logstash"
[[ -d $LOGSTASH_ROOT/bin ]] && export PATH=$LOGSTASH_ROOT/bin:$PATH
