package com.icbt.model;

public class Employee {

	private int empID;
	private String name;
	private String type_of_employee;
	private String specialized_country;
	private String specialized_type_of_job;
	private String email;
	private String address;
	
	public Employee(int empID, String name, String type_of_employee, String specialized_country,
			String specialized_type_of_job, String email, String address) {
		super();
		this.empID = empID;
		this.name = name;
		this.type_of_employee = type_of_employee;
		this.specialized_country = specialized_country;
		this.specialized_type_of_job = specialized_type_of_job;
		this.email = email;
		this.address = address;
	}

	
	
	public Employee(String name, String type_of_employee, String specialized_country, String specialized_type_of_job,
			String email, String address) {
		super();
		this.name = name;
		this.type_of_employee = type_of_employee;
		this.specialized_country = specialized_country;
		this.specialized_type_of_job = specialized_type_of_job;
		this.email = email;
		this.address = address;
	}


	public int getEmpId() {
		return empID;
	}
	
	public void setEmpId(int empID) {
		this.empID = empID;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getType_of_employee() {
		return type_of_employee;
	}
	
	public void setType_of_employee(String type_of_employee) {
		this.type_of_employee = type_of_employee;
	}
	
	public String getSpecialized_country() {
		return specialized_country;
	}
	
	public void setSpecialized_country(String specialized_country) {
		this.specialized_country = specialized_country;
	}
	
	public String getSpecialized_type_of_job() {
		return specialized_type_of_job;
	}
	
	public void setSpecialized_type_of_job(String specialized_type_of_job) {
		this.specialized_type_of_job = specialized_type_of_job;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
