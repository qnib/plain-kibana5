# plain-kibana5
Plain image holding kibana5

## Single Image Service

If you resources are limited (laptop), you should consider starting only one instance.

```
$ docker stack deploy -c docker-compose.yml kibana
Creating network kibana_default
Creating service kibana_backend
Creating service kibana_frontend
$ docker ps -f label=com.docker.stack.namespace=kibana --format '{{.Names}}\t{{.Image}}\t\t{{.Status}}'
kibana_frontend.1.out3s99wphf58tzre254j484i	qnib/plain-kibana5:latest		Up 1 second
kibana_backend.1.u7g3y3pgohst59cnhko33oe5y	qnib/plain-elasticsearch:latest		Up 30 seconds (healthy)
$
```

Afterwards open [localhost:5601](http://localhost:5601) and enjoy kibana5. To have a useful setup you need to index something - e.g. by using logstash.
