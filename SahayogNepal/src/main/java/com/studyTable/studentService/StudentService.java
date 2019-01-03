package com.studyTable.studentService;

import java.util.List;

import com.studyTable.student.Post;
import com.studyTable.student.Admin;
import com.studyTable.student.Sahayog_Customer;
import com.studyTable.student.Customer;
import com.studyTable.student.studyTable;

public interface StudentService {

	public Boolean add(Customer profile);

	public List<Customer> getStudentList();

	//public Boolean verifyEnrollemt(int studentId);

	// public Boolean enrollStudent(Post course);

	public List<Customer> search(int studentId);

	public boolean instructorlogin(Admin instructor);

	public List<studyTable> getTableList(String string);

	public boolean addTable(studyTable table);

	public boolean increaseUserCount(studyTable table);

	public boolean delete(studyTable table);

	public boolean decreaseUserCount(studyTable table);

	public boolean add_customer(Sahayog_Customer customer);
	
	public List<Sahayog_Customer> getCustomerList();
	
}
