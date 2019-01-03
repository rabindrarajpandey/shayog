package com.studyTable.student;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name ="address_tbl")
public class Address {

	@Id
	@GenericGenerator(name="gen",strategy="increment")
	@GeneratedValue(generator="gen")
	@Column(name = "intAddressId", unique = true, nullable = false, scale = 0)
	@NotNull
	private int intAddressId;
	@NotEmpty(message="!")
	private String strCountry;
	@NotEmpty(message="!")
	private String strState;
	@NotEmpty(message="!")
	private String strCity;
	@NotEmpty(message="!")
	private String strStreet;
	@NotEmpty(message="!")
	private String strApt;
	
	@NotNull(message = "!")
	private Integer intZipCode;
	
	
	public int getIntAddressId() {
		return intAddressId;
	}
	public void setIntAddressId(int intAddressId) {
		this.intAddressId = intAddressId;
	}
	public String getStrCountry() {
		return strCountry;
	}
	public void setStrCountry(String strCountry) {
		this.strCountry = strCountry;
	}
	public String getStrState() {
		return strState;
	}
	public void setStrState(String strState) {
		this.strState = strState;
	}
	public String getStrStreet() {
		return strStreet;
	}
	public void setStrStreet(String strStreet) {
		this.strStreet = strStreet;
	}
	public String getStrApt() {
		return strApt;
	}
	public void setStrApt(String strApt) {
		this.strApt = strApt;
	}
	public Integer getIntZipCode() {
		return intZipCode;
	}
	public void setIntZipCode(Integer intZipCode) {
		this.intZipCode = intZipCode;
	}

	public String getStrCity() {
		return strCity;
	}
	public void setStrCity(String strCity) {
		this.strCity = strCity;
	}
	
	
}
