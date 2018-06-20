#!/bin/bash

NEO=${2-`pwd`/databases}/neo4j
DB=$NEO/data/databases/${1-pokec.db}
BENCHMARK=${3-`pwd`}

echo "Creating and indexing 100,000,000 nodes. Then querying for 100,000 nodes."

JAVA_OPTS="-Xmx12G -Xmn2G" $NEO/bin/neo4j-shell -host localhost -port 1337 -c -file $BENCHMARK/neo4j/bigTest.cypher -v 
