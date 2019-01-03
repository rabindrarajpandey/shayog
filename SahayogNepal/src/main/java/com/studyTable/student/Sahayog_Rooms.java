package com.studyTable.student;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name ="rooms_tbl")
public class Sahayog_Rooms {

		@Id
		@GenericGenerator(name="gen",strategy="increment")
		@GeneratedValue(generator="gen")
		@Column(name = "customerId", unique = true, nullable = false, scale = 1)
		@NotNull
		private int roomId;
	
		
		@NotEmpty
		private String type;
		
		@Valid
		@OneToOne(cascade = CascadeType.ALL)
		@JoinColumn(name="intAddressId")
		private Address location;
		
		@NotEmpty
		private String title;
		
		@NotEmpty
		private String postedDate;
		
		@NotEmpty
		private String availableDate;
		
		@NotEmpty
		private String Description;
		
		@NotEmpty
		private int utilities;
		
		@NotEmpty
		private int price;
		
		@NotEmpty
		private int others;
		
		@NotEmpty
		private int reviews;
		
		@NotEmpty
		private String pictures;
		

		public int getRoomId() {
			return roomId;
		}

		public void setRoomId(int roomId) {
			this.roomId = roomId;
		}

		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}

		public Address getLocation() {
			return location;
		}

		public void setLocation(Address location) {
			this.location = location;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getPostedDate() {
			return postedDate;
		}

		public void setPostedDate(String postedDate) {
			this.postedDate = postedDate;
		}

		public String getAvailableDate() {
			return availableDate;
		}

		public void setAvailableDate(String availableDate) {
			this.availableDate = availableDate;
		}

		public String getDescription() {
			return Description;
		}

		public void setDescription(String description) {
			Description = description;
		}

		public int getUtilities() {
			return utilities;
		}

		public void setUtilities(int utilities) {
			this.utilities = utilities;
		}

		public int getPrice() {
			return price;
		}

		public void setPrice(int price) {
			this.price = price;
		}

		public int getOthers() {
			return others;
		}

		public void setOthers(int others) {
			this.others = others;
		}

		public int getReviews() {
			return reviews;
		}

		public void setReviews(int reviews) {
			this.reviews = reviews;
		}

		public String getPictures() {
			return pictures;
		}

		public void setPictures(String pictures) {
			this.pictures = pictures;
		}
		
			

}
