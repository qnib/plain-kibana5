#!/bin/bash

if [[ -z ${ES_MASTER_HOST} ]];then
  export ES_MASTER_HOST=${ES_MASTER_HOST:-kibana_backend}
fi
echo ">> sed -i'' -e \"s;[#]*elasticsearch.url: .*;elasticsearch.url: 'http://${ES_MASTER_HOST}:9200';" /etc/kibana/kibana.yml
sed -i'' -e "s;[#]*elasticsearch.url: .*;elasticsearch.url: 'http://${ES_MASTER_HOST}:9200';" /etc/kibana/kibana.yml
