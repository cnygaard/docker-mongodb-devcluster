== Docker mongodb 2.6 development cluster ==

The Docker mongodb dev cluster consisting of two replica sets rs0 and rs1 and one config server.

mongodb config server port 27018
mongodb rs0 PRIMARY port 27019
mongodb rs0 SECONDARY port 27020
mongodb rs0 SECONDARY port 27021

== To build the docker image ==

sudo docker build .

== Start the docker machine and run a shell ==

sudo docker run -it 4eef


== Start all mongodb processes rs0,rs1 and config server ==

4eef # /root/mongodb.sh

== Initilize replica set 0 rs0 and replica set 1 rs1 ==

4eef # /root/clusterinit.sh


