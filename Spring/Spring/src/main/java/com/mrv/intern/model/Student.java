package com.mrv.intern.model;

public class Student {
	private int id;
	private String name;
	private String subject;
	private int mark;
	private int age;
	private String gender;
//	private String address;
//	private String telephone;

	public Student() {
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public int getMark() {
		return mark;
	}

	public void setMark(int mark) {
		this.mark = mark;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getAge() {
		return age;
	}



	public void setAge(int age) {
		this.age = age;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public Student(int id, String name, String subject, int mark, int age, String gender) {
		
		this.id = id;
		this.name = name;
		this.subject = subject;
		this.mark = mark;
		this.age = age;
		this.gender = gender;
	}
	

		

	

}

