#!/bin/bash
# RS0 27018,27019,27020
echo "rs.conf = rs.initiate()" | mongo --port 27018
sleep 3
echo "rs.add(\"$HOSTNAME:27019\")" | mongo --port 27018
echo "rs.add(\"$HOSTNAME:27020\")" | mongo --port 27018
# RS1 27021,27022,27023
echo "rs.conf = rs.initiate()" | mongo --port 27021
sleep 3
echo "rs.add(\"$HOSTNAME:27022\")" | mongo --port 27021
echo "rs.add(\"$HOSTNAME:27023\")" | mongo --port 27021

# Add cluster members rs0 and rs1 to the shard
echo "sh.addShard(\"rs0/$HOSTNAME:27018\")" | mongo
echo "sh.addShard(\"rs1/$HOSTNAME:27021\")" | mongo
