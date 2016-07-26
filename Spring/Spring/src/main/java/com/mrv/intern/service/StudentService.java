package com.mrv.intern.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mrv.intern.dao.StudentDAO;
import com.mrv.intern.model.Student;
@Service
public class StudentService {
	Student student;
	@Autowired
	StudentDAO studentDAO;
	public void SaveOrUpdate(Student stu){
		studentDAO.saveOrUpdate(stu);
	}
	public Student get(int studentId){
		return studentDAO.get(studentId);
	}
	public List<Student> list(){
		return studentDAO.list();
		
	}
	
	public List<Student> searchStudent(String name, String subject, String gender){
		return studentDAO.searchStudent(name, subject, gender);
	}
	
	public void saveStudent(String name, String subject, int mark, int age, String gender){
		studentDAO.saveStudent(name, subject, mark, age, gender);
		
	}
	public void editStudent(int id, String name, String subject, int mark, int age, String gender){
		studentDAO.editStudent(name, subject, mark, age, gender, id);
	}
	
	public void deleteStudent(int id){
		studentDAO.deleteStudent(id);
	}
}
