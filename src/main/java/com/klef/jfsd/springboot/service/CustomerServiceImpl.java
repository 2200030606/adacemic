package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
	private CustomerRepository customerRepository; 
	@Override
	public String customerRegistration(Customer customer)
	{
		customerRepository.save(customer);
		return "Customer registered successfully!";
	}
	@Override
	public Customer checkCustomerLogin(String email, String password) 
	{
		return customerRepository.checkCustomerLogin(email, password);
	}
	@Override
	public String updateCustomer(Customer customer) 
	{
		Customer c = customerRepository.findById(customer.getId()).get();
		c.setContact(customer.getContact());
		c.setName(customer.getName());
		c.setGender(customer.getGender());
		c.setDateofbirth(customer.getDateofbirth());
		c.setPassword(customer.getPassword());
		c.setLocation(customer.getLocation());
		c.setContact(customer.getContact());
		
		customerRepository.save(c);
		return "Customer Updated Successfully";
	}

}