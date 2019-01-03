package com.studyTable.student;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;



@Entity
@Table(name ="post_tbl")
public class Post {
	
	@Id
	@NotEmpty
	private String postId;
	@NotNull
	private int  customerId;

	public String getpostId() {
		return postId;
	}
	public void setpostId(String postId) {
		this.postId = postId;
	}
	public int getcustomerId() {
		return customerId;
	}
	public void setcustomerId(int customerId) {
		this.customerId = customerId;
	}
	
	
	
	
	

	
	

}
