package com.studyTable.student;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;

import com.studyTable.studentDao.StudentDaoImpl;
import com.studyTable.studentService.StudentServiceImpl;
import com.studyTable.validation.UserValidator;


@Configuration
public class SpringBeans {

	@Bean
	public Customer student(){
		return new Customer();
		
	}
	
	@Bean
	public StudentServiceImpl studentServiceImpl(){
		return new StudentServiceImpl();
	}
	
	@Bean
	public StudentDaoImpl studentDaoImpl(){
		return  new StudentDaoImpl();
	}
	
	@Bean
	public UserValidator userValidator(){
		return new UserValidator();
	}
	
	@Bean
	public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
	    return new PropertySourcesPlaceholderConfigurer();
	}

}
