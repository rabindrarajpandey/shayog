package com.studyTable.student;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.studyTable.studentService.StudentService;
import com.studyTable.validation.UserValidator;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {

	private static final Logger log = Logger.getLogger(HomeController.class.getName());

	private static int visitorCount=0;
	
	
	@Autowired
	private StudentService studentService;
	
	List<Sahayog_Customer> customerList = new ArrayList<Sahayog_Customer>();
	
	@Autowired
	private UserValidator customerValidation;
	
	/*String formattedDate;

	@Autowired
	private StudentService studentService;

	List<Student> studentList = new ArrayList<Student>();
	List<Instructor> instructorList = new ArrayList<Instructor>();
	List<studyTable> tableList = new ArrayList<studyTable>();

	Date date = new Date();

	Student student = new Student();

	Map<String, String> school;

	@Autowired
	private UserValidator studentValidation;

	*/
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		visitorCount++;
		log.info("User accessing the sahayog HomePage "  + visitorCount);

		//DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		//formattedDate = dateFormat.format(date);

		//model.addAttribute("serverTime", formattedDate);
		//model.addAttribute("student", new Student());
		
		model.addAttribute("count", visitorCount);
		model.addAttribute("valid", "false");
		model.addAttribute("new_customer", new Sahayog_Customer());
		model.addAttribute("new_room", new Sahayog_Rooms());
		log.info("Home page given to the client.");
		return "sahayog";
	}

	@RequestMapping(value = "/room", method = RequestMethod.GET)
	public String instructorLogin(Locale locale, Model model) {

		log.info("User accessing the rooms page");

		//DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		//formattedDate = dateFormat.format(date);

	
		log.info("sahayog rooms page given to the client");

		return "SahayogRooms";
	}
	
	
	@RequestMapping(value = "/welcome", method = RequestMethod.POST)
	public String welcome(@Valid  @ModelAttribute("new_customer") Sahayog_Customer customer, BindingResult result, Locale locale,
			Model model) {

		log.info("student submitted signUp form.");
		log.info("Retriving student data.......");
		
	
		//studentService.add_customer(customer);
		
		customerList = studentService.getCustomerList();

		Iterator<Sahayog_Customer> it = customerList.iterator();
		Sahayog_Customer ab = new Sahayog_Customer();

		Boolean userExist = false;
		while (it.hasNext()) {
			log.info("Student found in the data:");
			ab = it.next();
			log.info(ab.getEmail() + " " + customer.getEmail());

			if (ab.getEmail() == (customer.getEmail())) {

				log.info("Found match for:" + customer.getEmail());
				userExist = true;
				break;
			}
		}
		if (userExist){

			log.info("validating entries and Binding error msg.");
		model.addAttribute("uniqueUserError", "customer already exist!");}
		
		customerValidation.validate(customer, result);

		if (result.hasErrors() || userExist == true) {

			log.info("Errors found in the form submitted.");
			model.addAttribute("formError", "Errors found in the form submitted.");
			
			model.addAttribute("valid", "register");
			
			return "sahayog";

		}

		else {

			log.info("customer being added to the customer_tbl.");

			if (studentService.add_customer(customer)) {
				
				
				model.addAttribute("customerList", studentService.getCustomerList());

				
			}

			else
				{log.warn("customer was not be added to the table.");
			model.addAttribute("msg", "Opps ! Something went wrong. Please try again.");}

			log.info("Passing welcome page to the client.");
			
		}
			
		
	return "roomsPost";
	}
	
	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public String table(  @ModelAttribute("new_customer") Sahayog_Customer customer, Locale locale, Model model) {

		log.info("student attempting to login and access tablelist.");

		log.info("retrieveing studentlist from database.");
		customerList = studentService.getCustomerList();

		Iterator<Sahayog_Customer> it = customerList.iterator();
		Sahayog_Customer ab = new Sahayog_Customer();

		while (it.hasNext()) {
			log.info("Student found in the data:");
			ab = it.next();

			System.out.println(ab.getEmail() + "==" + customer.getEmail()+  "&&" + ab.getPassword()+".equals"+customer.getPassword());
			
			if (ab.getEmail() .equalsIgnoreCase(customer.getEmail()) && ab.getPassword().equals(customer.getPassword())) {

				
				log.info("student successfully logged in and accessing tablelist:" + ab.getEmail());
					
				model.addAttribute("student",ab);
				
				model.addAttribute("customerList", studentService.getCustomerList());
				
				return "roomsPost";

			}
		}
		log.info("student login failed returning to home page adding prompt.");
		model.addAttribute("msg", "userId or password is incorrect");
		model.addAttribute("valid", "login");
		return "sahayog";

	}
	
	
	
	
	/*@RequestMapping(value = "/instructorLogin", method = RequestMethod.GET)
	public String instructorLogin(Locale locale, Model model) {

		log.info("User accessing the instructorLogin page");

		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		//formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		model.addAttribute("instructor", new Instructor());

		log.info("Instructor Login page given to the client");

		return "instructorLogin";
	}

	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public String success(@Valid @ModelAttribute("instructor") Instructor instructor, BindingResult result,
			Locale locale, Model model) {

		log.info("Instructor attempting to login.");

		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		if (studentService.instructorlogin(instructor)) {
			model.addAttribute("course", new Course());
			log.info("Instructor login successful, given back success page.");
			return "success";
		}

		log.info("Instructor Not Found with Id:" + instructor.getInstructorId());
		log.info("Validating login information and binding the error msg.");
		studentValidation.validate(instructor, result, "instructor");

		log.info("model attribute added  to prompt the client for valid input and given back instructor login page.");
		model.addAttribute("msg", "Id or Password is incorrect.");

		return "instructorLogin";

	}

	@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
	public String addStudent(@Valid @ModelAttribute("course") Course course, BindingResult result, Locale locale,
			Model model) {

		log.info("Instructor attempting to enroll student.");

		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("course", new Course());

		studentValidation.validate(course, result, 1);

		if (result.hasErrors() || studentService.verifyEnrollemt(course.getStudentId())) {

			log.info("Errors found in the form submitted.");
			model.addAttribute("msg", "Not a valid submission or user already Exists.");
			return "success";

		}

		else {

			if (studentService.enrollStudent(course)) {
				log.info("Student successfully enrolled:" + course.getStudentId());
				model.addAttribute("msg", "student successfully enrolled, You can enroll more now.");
			}
		}

		return "success";

	}




	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String signUp(Locale locale, Model model) {

		log.info("SignUp page is requested.");

		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		model.addAttribute("student", new Student());

		school = new LinkedHashMap<String, String>();
		school.put("Tamuc", "Texas A&M University Commerce");
		school.put("UTA", "austin");
		school.put("UTA", "Arligton");
		school.put("UNT", "North Texas");
		school.put("UTD", "Dallas");

		model.addAttribute("schoolList", school);

		log.info("SignUp page provided to client");
		return "signUp";
	}

	@RequestMapping(value = "/welcome", method = RequestMethod.POST)
	public String welcome(@Valid @ModelAttribute("student") Student student, BindingResult result, Locale locale,
			Model model) {

		log.info("student submitted signUp form.");

		school = new LinkedHashMap<String, String>();
		school.put("Tamuc", "Texas A&M University Commerce");
		school.put("UTA", "austin");
		school.put("UTA", "Arligton");
		school.put("UNT", "North Texas");
		school.put("UTD", "Dallas");

		model.addAttribute("schoolList", school);

		log.info("Retriving student data.......");
		studentList = studentService.getStudentList();

		Iterator<Student> it = studentList.iterator();
		Student ab = new Student();

		Boolean userExist = false;
		while (it.hasNext()) {
			log.info("Student found in the data:");
			ab = it.next();
			log.info(ab.getFirstName() + " " + ab.getLastName());

			if (ab.getStudentId() == (student.getStudentId())) {

				log.info("Found match for:" + student.getStudentId());
				userExist = true;
				break;
			}
		}
		if (userExist){

			log.info("validating entries and Binding error msg.");
		model.addAttribute("uniqueUserError", "student already exist!");}
		
		studentValidation.validate(student, result);

		if (result.hasErrors() || userExist == true) {

			log.info("Errors found in the form submitted.");
			return "signUp";

		}

		else {

			log.info("student being added to the student_tbl.");

			if (studentService.add(student)) {
				model.addAttribute("msg", "Student Successfully Registered");
				model.addAttribute("studentList", studentService.getStudentList());

			}

			else
				{log.warn("student was not be added to the table.");
			model.addAttribute("msg", "Opps ! Something went wrong. Please try again.");}

			log.info("Passing welcome page to the client.");
			return "welcome";
		}

	}

	@RequestMapping(value = "/table", method = RequestMethod.POST)
	public String table(@ModelAttribute("student") Student student, Locale locale, Model model) {

		log.info("student attempting to login and access tablelist.");

		log.info("retrieveing studentlist from database.");
		studentList = studentService.getStudentList();

		Iterator<Student> it = studentList.iterator();
		Student ab = new Student();

		while (it.hasNext()) {
			log.info("Student found in the data:");
			ab = it.next();

			if (ab.getStudentId() == (student.getStudentId()) && ab.getPassword().equals(student.getPassword())) {

				tableList = studentService.getTableList(ab.getCourseId());
				System.out.println(tableList.size());
				log.info("student successfully logged in and accessing tablelist:" + ab.getLastName());
				
				model.addAttribute("studyTable", new studyTable());
				model.addAttribute("tableList", tableList);
				model.addAttribute("student",ab);
				
				return "tableList";

			}
		}
		log.info("student login failed returning to home page adding prompt.");
		model.addAttribute("msg", "userId or password is incorrect");
		return "home";

	}

	@RequestMapping(value = "/createTable", method = RequestMethod.POST)
	public String createTable(@ModelAttribute("student") Student student, Locale locale, Model model) {

		log.info("student attempting to create table.");

		studyTable table = new studyTable();


		log.info("retrieveing studentlist from database.");
		studentList = studentService.getStudentList();

		Iterator<Student> it = studentList.iterator();
		Student ab = new Student();

		while (it.hasNext()) {
			log.info("Student found in the data:");
			ab = it.next();

			
			if (ab.getStudentId() == (student.getStudentId())) {
				log.info("Found student info, making table object "+ab.getStudentId() + "  " + student.getStudentId());
				log.info("creating table.");
				tableList = studentService.getTableList(ab.getCourseId());

				model.addAttribute("tableList", tableList);

				table.setStudentId(student.getStudentId());
				table.setCourse(ab.getCourseId());
				table.setTableName(ab.getLastName());

				log.info("no of user set to 1");
				table.setUserCount(1);
				break;
			}
		}

		Iterator<studyTable> tl = tableList.iterator();
		studyTable data = new studyTable();

		boolean userExist = true;
		while (tl.hasNext()) {
			log.info("Student found in the data:");
			data = tl.next();
			
			log.info("Found student info making table object"+data.getStudentId() + "  " + table.getStudentId());
			if (data.getStudentId() == (table.getStudentId())) {
				log.info("Found student info making table object"+data.getStudentId() + "  " + table.getStudentId());
				userExist = false;
				break;
			}
		}

		if (userExist) {
			studentService.addTable(table);

			log.info("table added to the database." + ab.getLastName() + ab.getCourseId());

			model.addAttribute("studyTable", new studyTable());
			model.addAttribute("tableList", tableList);
			
			model.addAttribute("room",ab.getLastName()+ab.getStudentId());

			Random rnd=new Random();
			Object z=rnd.nextInt(100);
			String x=z.toString();
			
			model.addAttribute("user",x+"user");
			log.info("passing table page to the client.");
			return "table";

		}

		log.info("user already has a table returnig back to home.");
		model.addAttribute("tableList", tableList);
		model.addAttribute("studyTable",new studyTable());
		model.addAttribute("msg", "you already created table.");
		return "tableList";

	}

	@RequestMapping(value = "/joinTable", method = RequestMethod.POST)
	public String joinTable(@ModelAttribute("student") Student student, @ModelAttribute("studyTable") studyTable table,
			Locale locale, Model model) {

		log.info("student attempting joining the table:" + table.getTableName() + table.getCourse());

		System.out.println(table.getUserCount());

		if (table.getUserCount() < 4) {

			System.out.print(studentService.increaseUserCount(table));

			model.addAttribute("tableList", studentService.getTableList(table.getCourse()));
		
			Random rd=new Random();
			Object a=rd.nextInt(100);
			String b=a.toString();
			System.out.print("UserName: random number:"+b+"studentId"+ student.getStudentId()+"\n");
			model.addAttribute("user",b+"user");
			model.addAttribute("room",table.getTableName()+table.getStudentId());

			log.info("student successfully joining the table:" + table.getTableName() + table.getCourse()
			+ "no of user in this table" + table.getUserCount());

			return "table";

		}

		log.warn("student failed to join table returned back to tablelist.");

		model.addAttribute("studyTable", new studyTable());
		model.addAttribute("tableList", studentService.getTableList(student.getCourseId()));
		return "tableList";

	}

	@RequestMapping(value = "/logOut", method = RequestMethod.POST)
	public String logOut(@ModelAttribute("studyTable") studyTable table, Locale locale, Model model) {

		log.info("student loging out........");

		if (table.getUserCount() == 1) {

			log.info("table deleted from the database.");
			if (studentService.delete(table))
				log.info("table deleted from the database.");
		}

		if (studentService.decreaseUserCount(table))
			log.info("userCount decreased in the table.");

		return "home";

	}
*/
}
