FROM centos
COPY mongod.repo /etc/yum.repos.d/mongod.repo
RUN yum -y update
RUN yum -y install mongodb-org 
RUN yum -y install git
RUN for i in {1..10} ; do mkdir /var/lib/mongo/$i ; done
COPY mongo.sh /root/mongo.sh
COPY clusterinit.sh /root/cluserinit.sh
COPY . /opt/docker-mongodb-devcluster
