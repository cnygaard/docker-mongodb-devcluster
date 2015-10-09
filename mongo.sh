#!/bin/bash

# Replica set 0
mongod --replSet "rs0" --port 27018 --dbpath /var/lib/mongo/1 --logpath /root/1.log --fork
mongod --replSet "rs0" --port 27019 --dbpath /var/lib/mongo/2 --logpath /root/2.log --fork
mongod --replSet "rs0" --port 27020 --dbpath /var/lib/mongo/3 --logpath /root/3.log --fork
# Replica set 1
mongod --replSet "rs1" --port 27021 --dbpath /var/lib/mongo/4 --logpath /root/4.log --fork
mongod --replSet "rs1" --port 27022 --dbpath /var/lib/mongo/5 --logpath /root/5.log --fork
mongod --replSet "rs1" --port 27023 --dbpath /var/lib/mongo/6 --logpath /root/6.log --fork

# Config server
mongod --port 27024 --dbpath /var/lib/mongo/7 --logpath /root/7.log --fork --configsvr 
