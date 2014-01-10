use datastax_shared_session_demo; 

CREATE TABLE timeline ( 
	userid uuid,
	time timeuuid,
	follower_id uuid,
	message text,
	PRIMARY KEY (userid, time)
) WITH CLUSTERING ORDER BY(time DESC);

truncate timeline;
