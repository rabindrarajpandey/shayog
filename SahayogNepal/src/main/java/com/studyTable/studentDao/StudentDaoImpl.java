package com.studyTable.studentDao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.studyTable.student.Post;
import com.studyTable.student.Admin;
import com.studyTable.student.Sahayog_Customer;
import com.studyTable.student.Customer;
import com.studyTable.student.studyTable;

@Repository
public class StudentDaoImpl implements StudentDao {
	
	private static final Logger log = Logger.getLogger(StudentDaoImpl.class.getName());
	
	
	
	private List<Sahayog_Customer> customerList = new ArrayList<Sahayog_Customer>();

	private List<Customer> studentList = new ArrayList<Customer>();
	private List<Post> courseList = new ArrayList<Post>();
	private List<studyTable> tableList = new ArrayList<studyTable>();
	private List<Admin> instructorList = new ArrayList<Admin>();

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public boolean add_customer(Sahayog_Customer customer) {
		
		log.info("Adding student to the student_tbl");
		try {
			Session session = sessionFactory.getCurrentSession();

			session.save("Sahayog_Customer", customer);
			return true;
		} catch (Exception e) {
			log.warn("Sql Exception Occured: "+e.toString());
			return false;
		}

	}
	
	@Transactional
	public boolean add(Customer student) {
		
		log.info("Adding student to the student_tbl");
		try {
			Session session = sessionFactory.getCurrentSession();

			session.save("Student", student);
			return true;
		} catch (Exception e) {
			log.warn("Sql Exception Occured: "+e.toString());
			return false;
		}

	}

	
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Customer> getStudentList() {

		log.info("retrieving studentList to the student_tbl");
		try{
		Session session = sessionFactory.getCurrentSession();
		studentList = session.createQuery("from Student").list();
		}
		catch(Exception e){log.warn("Sql Exception Occured: "+e.toString());}
		
		return studentList;
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Sahayog_Customer> getCustomerList() {

		log.info("retrieving studentList to the customer_tbl");
		try{
		Session session = sessionFactory.getCurrentSession();
		customerList = session.createQuery("from Sahayog_Customer").list();
		}
		catch(Exception e){log.warn("Sql Exception Occured: "+e.toString());}
		
		return customerList;
	}

	

	

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Transactional
	public List<Customer> search(int studentId) {
		
		try{

		Session session = sessionFactory.getCurrentSession();

		studentList = session.createQuery("from Student").list();
		
		}
		catch(Exception e){log.warn(" Sql Exception Occured: "+e.toString());}

		Iterator<Customer> queryList = studentList.iterator();
		
		
		
		List<Customer> studentList = new ArrayList();
		while (queryList.hasNext()) {

			Customer student = queryList.next();
			if (studentId == (student.getCustomerId())) {
				studentList.add(student);
			}
		}
		
		
		
		return studentList;
	}

	/*@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public boolean verifyEnrollment(int id) {
		
		String hql = "FROM Course C WHERE C.studentId = id";
		Session session = sessionFactory.getCurrentSession();
		try {
			courseList = session.createQuery(hql).list();
		} catch(Exception e)
		{log.warn("Exception Occured: "+e.toString());}
		
		Iterator<Post> queryList = courseList.iterator();
		System.out.print("the query result is:" + queryList.next().getStudentId());
		Boolean found = false;
		while (queryList.hasNext()) {

			Post course = queryList.next();
			System.out.print("The id is"+id +"The database has:"+ course.getStudentId());
			if (id == (course.getStudentId())) {

	
				found = true;
			}

		}
		System.out.print(found);
		return found;

	}*/

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public boolean instructorLogin(Admin instructor) {

		
		try{
		Session session = sessionFactory.getCurrentSession();

		instructorList = session.createQuery("from Instructor").list();

		
	}
	catch(Exception e){log.warn("Exception Occured: "+e.toString());}
		
		Iterator<Admin> queryList = instructorList.iterator();

		Boolean found = false;
		while (queryList.hasNext()) {

			Admin existingInstructor = queryList.next();
			System.out.print((existingInstructor.getadminId() + instructor.getadminId()
					+ existingInstructor.getPassword() + instructor.getPassword()));
			if (existingInstructor.getadminId() == instructor.getadminId()
					&& existingInstructor.getPassword().equals(instructor.getPassword())) {
				found = true;
				break;
			}
		}

		return found;
	}

	@Override
	@Transactional
	public Boolean enrollStudent(Post course) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save("Course", course);
			return true;
		}
		catch(Exception e){log.warn("Exception Occured: "+e.toString());
			return false;
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<studyTable> getTableList(String course) {

		String hql = " from studyTable S "
				+ " where S.course=course";

		try{
		Session session = sessionFactory.getCurrentSession();
		tableList = session.createQuery(hql).list();
		}
		catch(Exception e){log.warn("Exception Occured: "+e.toString());}
		return tableList;
	}

	@Override
	@Transactional
	public boolean addTable(studyTable table) {
		try {
			Session session = sessionFactory.getCurrentSession();

			session.save("table", table);
			return true;
		}
		catch(Exception e){log.warn("Exception Occured: "+e.toString());
			return false;
		}
	}



	@Override
	@Transactional
	public boolean increaseUserCount(studyTable table) {

		int id = table.getStudentId();
		String course = table.getCourse();

		String hql = "UPDATE studyTable S SET S.userCount = S.userCount + 1 WHERE S.studentId = :id and S.course= :course and S.userCount < 4";

		Session session = sessionFactory.getCurrentSession();
		try {

			Query updateHits = session.createQuery(hql);
			updateHits.setParameter("course", course);
			updateHits.setParameter("id", id);
			updateHits.executeUpdate();

		}
		catch(Exception e){log.warn("Exception Occured: "+e.toString());
			return false;
		}
		return true;
	}

	@Override
	@Transactional 
	public boolean delete(studyTable table) {
		try {
			Session session = sessionFactory.getCurrentSession();

			session.delete("studyTable", table);
			return true;
		}
		catch(Exception e){log.warn("Exception Occured: "+e.toString());
			return false;
		}

		
	}

	@Override
	public boolean decreaseUserCount(studyTable table) {
		int id = table.getStudentId();
		String course = table.getCourse();

		String hql = "UPDATE studyTable S SET S.userCount = S.userCount - 1 WHERE S.studentId = :id and S.course= :course and S.userCount < 4";

		Session session = sessionFactory.getCurrentSession();
		try {

			Query updateHits = session.createQuery(hql);
			updateHits.setParameter("course", course);
			updateHits.setParameter("id", id);
			updateHits.executeUpdate();

		}
		catch(Exception e){log.warn("Exception Occured: "+e.toString());
			return false;
		}
		return true;
	}

}
