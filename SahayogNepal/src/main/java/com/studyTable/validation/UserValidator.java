package com.studyTable.validation;


import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.studyTable.student.Sahayog_Customer;
import com.studyTable.student.Customer;
import com.studyTable.studentService.StudentService;



public class UserValidator implements Validator {
	
	@Autowired
	private StudentService studentService;

    @SuppressWarnings("rawtypes")
	@Override
    public boolean supports(Class clazz) {
        // always like this.
        return Sahayog_Customer.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {

    	
    	
    	Sahayog_Customer customer = (Sahayog_Customer) target;
    	
    	
       /* if (!(customer.getPassword().equals(customer.getPassword()))) {
            
           
        	errors.rejectValue("password", "notmatch.password"); 
        }*/
        
        System.out.println(customer.getCustomerId());
        
      
    }
    
   
   
}
