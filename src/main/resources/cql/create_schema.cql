create keyspace if not exists datastax_shared_session_demo with  replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

use datastax_shared_session_demo; 

CREATE TABLE if not exists timeline ( 
	userid uuid,
	time timeuuid,
	follower_id uuid,
	message text,
	PRIMARY KEY (userid, time)
) WITH CLUSTERING ORDER BY(time DESC);

truncate timeline;