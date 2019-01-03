package com.studyTable.student;




import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;






@Entity
@Table(name ="admin_tbl")
public class Admin {
	
	@Id
	private int adminId;
	@NotEmpty
	private String password;
	
	
	public int getadminId() {
		return adminId;
	}
	public void setadminId(int adminId) {
		this.adminId = adminId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	

	
	

}
