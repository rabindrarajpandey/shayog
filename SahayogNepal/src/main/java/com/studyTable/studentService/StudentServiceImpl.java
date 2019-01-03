package com.studyTable.studentService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.studyTable.student.Post;
import com.studyTable.student.Admin;
import com.studyTable.student.Sahayog_Customer;
import com.studyTable.student.Customer;
import com.studyTable.student.studyTable;
import com.studyTable.studentDao.StudentDao;

public class StudentServiceImpl implements StudentService {

	@Autowired
	public StudentDao studentDao;

	public Boolean add(Customer student) {

		return (studentDao.add(student));
	}

	public List<Customer> getStudentList() {
		return studentDao.getStudentList();
	}


	public List<Customer> search(int studentId) {

		return studentDao.search(studentId);
	}

	/*@Override
	public Boolean verifyEnrollemt(int studentId) {
		return (studentDao.verifyEnrollment(studentId));
	}*/

	@Override
	public boolean instructorlogin(Admin instructor) {
		return (studentDao.instructorLogin(instructor));

	}

	/*@Override
	public Boolean enrollStudent(Post course) {

		return (studentDao.enrollStudent(course));
	}
*/
	@Override
	public List<studyTable> getTableList(String courseId) {
		return (studentDao.getTableList(courseId));
	}

	@Override
	public boolean addTable(studyTable table) {

		return (studentDao.addTable(table));
	}

	@Override
	public boolean increaseUserCount(studyTable table) {
		return (studentDao.increaseUserCount(table));
	}

	@Override
	public boolean delete(studyTable table) {
		return(studentDao.delete(table));
	}

	@Override
	public boolean decreaseUserCount(studyTable table) {
		return (studentDao.decreaseUserCount(table));
		
	}
	
	
	
	public boolean add_customer(Sahayog_Customer customer){
		return (studentDao.add_customer(customer));
	}

	@Override
	public List<Sahayog_Customer> getCustomerList() {
		// TODO Auto-generated method stub
		return studentDao.getCustomerList();
	}
	
	

}
