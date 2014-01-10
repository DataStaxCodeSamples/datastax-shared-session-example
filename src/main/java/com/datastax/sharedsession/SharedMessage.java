package com.datastax.sharedsession;

import java.util.UUID;

public class SharedMessage {

	private UUID userid;
	private UUID followerId;
	private String message;
	
	public SharedMessage(UUID userid, UUID followerId, String message) {
		super();
		this.userid = userid;
		this.followerId = followerId;
		this.message = message;
	}

	public UUID getUserid() {
		return userid;
	}

	public UUID getFollowerId() {
		return followerId;
	}

	public String getMessage() {
		return message;
	}

	@Override
	public String toString() {
		return "SharedMessage [userid=" + userid + ", followerId=" + followerId + ", message=" + message + "]";
	}		
}
