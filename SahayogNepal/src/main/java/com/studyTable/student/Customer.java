package com.studyTable.student;




import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;







@Entity
@Table(name ="customer_tbl")
public class Customer {
	
	@Id
	@NotNull
	private int customerId;
	@NotEmpty
	private String firstName;
	@NotEmpty
	private String lastName;
	
	@NotEmpty
	private String email;
	
	@NotEmpty
	private String phone;
	
	@NotEmpty
	private String password;
	
	
	private int customer_rating;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="intAddressId")
	private Address address;
	
	
	
	
	public int getCustomerId() {
		return customerId;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String userName) {
		this.firstName = userName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getCustomer_rating() {
		return customer_rating;
	}
	public void setCustomer_rating(int customer_rating) {
		this.customer_rating = customer_rating;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	
	
	
	
	

}
