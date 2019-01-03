package com.studyTable.student;




import java.io.Serializable;

import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;







@SuppressWarnings("serial")
@Entity
@Table(name ="studyTable_tbl")
public class studyTable implements Serializable {
	

	@Id 
	private String course;
	 
	@Id 
	private int studentId;
	
	@NotEmpty
	private String tableName;
	
	@NotNull
	private int userCount;
	
	
	public int getUserCount() {
		return userCount;
	}
	public void setUserCount(int userCount) {
		this.userCount = userCount;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int i) {
		this.studentId = i;
	}
	

}
