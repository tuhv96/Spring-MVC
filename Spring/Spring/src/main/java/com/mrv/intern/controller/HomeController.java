package com.mrv.intern.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mrv.intern.model.Student;
import com.mrv.intern.service.StudentService;

@Controller
public class HomeController {
	@Autowired
	@Qualifier("studentService")
	private StudentService studentService;
	@RequestMapping(value = "/")
	public ModelAndView listStudent(ModelAndView model) throws IOException {
		model.addObject("listStudent", null);
		model.setViewName("home");
		return model;
	}
	@ResponseBody
	@RequestMapping(value = "/searchStudent", method = RequestMethod.POST)
	public String searchStudent(@RequestParam() String name, @RequestParam() String subject,
			@RequestParam String gender) throws IOException {
		List<Student> listStudent = new ArrayList<Student>();
		if (name.equals("") && subject.equals("") && gender.equals("Gender")) {
			listStudent = studentService.list();
		} else {
			listStudent = studentService.searchStudent(name, subject, gender);
		}

		String json = new Gson().toJson(listStudent);
		JsonObject jsonObj = new JsonObject();
		JsonParser parser = new JsonParser();
		JsonArray o = parser.parse(json).getAsJsonArray();
		jsonObj.add("data", o);
		System.out.println("HTTPS:" + json);

		return jsonObj.toString();
	}

	@ResponseBody
	@RequestMapping(value = "/saveStudent", method = RequestMethod.POST)
	public void saveStudenttwo(@RequestParam() String name, @RequestParam() String subject,@RequestParam() int mark,
			@RequestParam() int age,
			@RequestParam String gender) throws IOException {
		studentService.saveStudent(name, subject, mark, age, gender);
	}
	
	@ResponseBody
	@RequestMapping(value="/editstudent", method = RequestMethod.POST)
	public void editStudent(@RequestParam() int id, String name, @RequestParam() String subject,@RequestParam() int mark,
			@RequestParam() int age,
			@RequestParam String gender) throws IOException{
		studentService.editStudent(id, name, subject, mark, age, gender);
		
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteStudent", method = RequestMethod.POST)
	public void deleteStudent(@RequestParam() int id) throws IOException{
		studentService.deleteStudent(id);
		
	}
	
	
}
