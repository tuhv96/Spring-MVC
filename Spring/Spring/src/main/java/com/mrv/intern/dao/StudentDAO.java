package com.mrv.intern.dao;

import java.util.List;

import com.mrv.intern.model.Student;



public interface StudentDAO {
	
	public void saveOrUpdate(Student student);
	
	public Student get(int studentId);
	
	public List<Student> list();
	
	public List<Student> searchStudent(String name, String subject, String gender);
	
	public void saveStudent(String name, String subject, int mark, int age, String gender);
	
	public void editStudent(String name, String subject, int mark, int age, String gender, int id);
	
	public void deleteStudent(int id);
}

