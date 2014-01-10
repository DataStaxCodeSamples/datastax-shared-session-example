use datastax_shared_session_demo; 

CREATE TABLE timeline ( 
	userid uuid,
	follower_id uuid,
	message text,
	PRIMARY KEY (userid, follower_id)
) WITH compaction={'class': 'LeveledCompactionStrategy'};

truncate timeline;
