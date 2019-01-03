package com.studyTable.studentDao;

import java.util.List;

import com.studyTable.student.Post;
import com.studyTable.student.Admin;
import com.studyTable.student.Sahayog_Customer;
import com.studyTable.student.Customer;
import com.studyTable.student.studyTable;


public interface StudentDao {
	
	
		
	public boolean add(Customer student);
	public List<Customer> getStudentList();
	public List<Customer> search( int studentId);
	//public boolean verifyEnrollment(int studentId);
	public boolean instructorLogin(Admin instructor);
	public Boolean enrollStudent(Post course);
	public List<studyTable> getTableList(String courseId);
	public boolean addTable(studyTable table);
	public boolean increaseUserCount(studyTable table);
	public boolean delete(studyTable table);
	public boolean decreaseUserCount(studyTable table);
	
	
	public boolean add_customer(Sahayog_Customer customer);
	public List<Sahayog_Customer> getCustomerList();
	
	
	

}
