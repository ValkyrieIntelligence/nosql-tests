CREATE INDEX ON :Person(id);

UNWIND range(1,100000000) AS id
MERGE (:Person{id:id, age: id % 100});

schema await

UNWIND range(1,100000000,1000) AS id
MATCH (:Person{id:id})
RETURN count(*);
