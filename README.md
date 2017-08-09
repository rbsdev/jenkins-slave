Jenkins Slave
=============

```
docker build -t jenkins-slave .

docker run -d \
           -e JENKINS_URL=http://master.jenkins.com \
           -e JENKINS_NODE_NAME=node-name \
           -e JENKINS_SECRET=xxxxxxxx
```
