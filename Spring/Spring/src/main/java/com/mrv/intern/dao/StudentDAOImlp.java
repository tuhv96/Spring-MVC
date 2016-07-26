package com.mrv.intern.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mrv.intern.model.Student;

@Repository("studentDAOImlp")
public class StudentDAOImlp implements StudentDAO {
	// @Autowired
	// private SessionFactory sessionFactory;
	// public StudentDAOImlp() {
	// // TODO Auto-generated constructor stub
	// }
	private JdbcTemplate jdbcTemplate;

	// public StudentDAOImlp(DataSource dataSource) {
	// jdbcTemplate = new JdbcTemplate(dataSource);
	// }
	@Autowired
	public void setDataSource(@Qualifier("dataSource") DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void saveOrUpdate(Student student) {
		if (student.getId() > 0) {
			// update
			String sql = "UPDATE student SET name=?, subject=?, mark=?, age=?, gender=? WHERE id=?";
			jdbcTemplate.update(sql, student.getName(), student.getSubject(), student.getMark(), student.getAge(),
					student.getGender(), student.getId());
		} else {
			// insert
			String sql = "INSERT INTO student (name, subject, mark, age, gender)" + " VALUES (?, ?, ?, ?, ?)";
			jdbcTemplate.update(sql, student.getName(), student.getSubject(), student.getMark(), student.getAge(),
					student.getGender());
		}

	}
	@Override
	public List<Student> list() {
		String sql = "SELECT * FROM student";
		List<Student> listStudent = jdbcTemplate.query(sql, new RowMapper<Student>() {

			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student astudent = new Student();

				astudent.setId(rs.getInt("id"));
				astudent.setName(rs.getString("name"));
				astudent.setSubject(rs.getString("subject"));
				astudent.setMark(rs.getInt("mark"));
				astudent.setAge(rs.getInt("age"));
				astudent.setGender(rs.getString("gender"));

				return astudent;
			}

		});

		return listStudent;
	}

	@Override
	public Student get(int studentId) {
		String sql = "SELECT * FROM student WHERE id=" + studentId;
		return jdbcTemplate.query(sql, new ResultSetExtractor<Student>() {

			@Override
			public Student extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					Student student = new Student();
					student.setId(rs.getInt("id"));
					student.setName(rs.getString("name"));
					student.setSubject(rs.getString("subject"));
					student.setMark(rs.getInt("mark"));
					student.setAge(rs.getInt("age"));
					student.setGender(rs.getString("gender"));

					return student;
				}

				return null;
			}

		});
	}

	@Override
	public List<Student> searchStudent(String name, String subject, String gender) {

		String sql = "SELECT * FROM student WHERE name= ? and subject= ? and gender = ?";
		Object[] agrs = new Object[] { name, subject, gender };
		if (name.equals("") || subject.equals("") || gender.equals("Gender")) {
			if (subject.equals("") && gender.equals("Gender")) {
				sql = "SELECT * FROM student WHERE name= ?";
				agrs = new Object[] { name };
			} else if (name.equals("") && gender.equals("Gender")) {
				sql = "SELECT * FROM student WHERE subject= ?";
				agrs = new Object[] { subject };
			} else if (name.equals("") && subject.equals("")) {
				sql = "SELECT * FROM student WHERE gender= ?";
				agrs = new Object[] { gender };
			} else if (name.equals("")) {
				sql = "SELECT * FROM student WHERE subject= ? and gender= ?";
				agrs = new Object[] { subject, gender };
			} else if (subject.equals("")) {
				sql = "SELECT * FROM student WHERE name= ? and gender= ?";
				agrs = new Object[] { name, gender };
			} else if (gender.equals("Gender")) {
				sql = "SELECT * FROM student WHERE name= ? and subject= ?";
				agrs = new Object[] {name, subject};
			}
		}
		List<Student> listStudent = jdbcTemplate.query(sql, agrs, new RowMapper<Student>() {

			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student astudent = new Student();

				astudent.setId(rs.getInt("id"));
				astudent.setName(rs.getString("name"));
				astudent.setMark(rs.getInt("mark"));
				astudent.setSubject(rs.getString("subject"));
				astudent.setAge(rs.getInt("age"));
				astudent.setGender(rs.getString("gender"));

				return astudent;
			}

		});
		
		if(listStudent.size() == 0){
			sql = "SELECT * FROM student WHERE name= ?";
			agrs = new Object[] { name};
			listStudent = jdbcTemplate.query(sql, agrs, new RowMapper<Student>() {

				@Override
				public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
					Student astudent = new Student();

					astudent.setId(rs.getInt("id"));
					astudent.setName(rs.getString("name"));
					astudent.setMark(rs.getInt("mark"));
					astudent.setSubject(rs.getString("subject"));
					astudent.setAge(rs.getInt("age"));
					astudent.setGender(rs.getString("gender"));

					return astudent;
				}

			});
			if(listStudent.size() == 0){
				sql = "SELECT * FROM student WHERE subject= ?";
				agrs = new Object[] {subject};
				listStudent = jdbcTemplate.query(sql, agrs, new RowMapper<Student>() {

					@Override
					public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
						Student astudent = new Student();

						astudent.setId(rs.getInt("id"));
						astudent.setName(rs.getString("name"));
						astudent.setMark(rs.getInt("mark"));
						astudent.setSubject(rs.getString("subject"));
						astudent.setAge(rs.getInt("age"));
						astudent.setGender(rs.getString("gender"));

						return astudent;
					}

				});
				if(listStudent.size() == 0){
					sql = "SELECT * FROM student WHERE gender= ?";
					agrs = new Object[] {gender};
					listStudent = jdbcTemplate.query(sql, agrs, new RowMapper<Student>() {

						@Override
						public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
							Student astudent = new Student();

							astudent.setId(rs.getInt("id"));
							astudent.setName(rs.getString("name"));
							astudent.setMark(rs.getInt("mark"));
							astudent.setSubject(rs.getString("subject"));
							astudent.setAge(rs.getInt("age"));
							astudent.setGender(rs.getString("gender"));

							return astudent;
						}

					});
				}
			}
		}

		return listStudent;
	}

	@Override
	public void saveStudent(String name, String subject, int mark, int age, String gender) {
		String sql = "SELECT * FROM student WHERE name= ? and subject= ? and mark= ? and age= ? and gender = ?";
		Object[] agrs = new Object[] { name, subject, mark, age, gender };
		List<Student> listStudent = jdbcTemplate.query(sql, agrs, new RowMapper<Student>() {

			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student astudent = new Student();

				astudent.setId(rs.getInt("id"));
				astudent.setName(rs.getString("name"));
				astudent.setMark(rs.getInt("mark"));
				astudent.setSubject(rs.getString("subject"));
				astudent.setAge(rs.getInt("age"));
				astudent.setGender(rs.getString("gender"));

				return astudent;
			}

		});
		
		if(listStudent.size() > 0){
			sql = "UPDATE student SET name=?, subject=?, mark=?, age=?, gender=?";
			jdbcTemplate.update(sql, name, subject, mark, age,
					gender);
		}
		else{
			sql = "INSERT INTO student (name, subject, mark, age, gender)" + " VALUES (?, ?, ?, ?, ?)";
			jdbcTemplate.update(sql, name, subject, mark, age,
					gender);
		}
		
	}

	@Override
	public void editStudent(String name, String subject, int mark, int age, String gender, int id) {
		// TODO Auto-generated method stub
		String sql = "UPDATE student SET name=?, subject=?, mark=?, age=?, gender=? where id = ?";
		jdbcTemplate.update(sql, name, subject, mark, age,
				gender, id);
	}

	@Override
	public void deleteStudent(int id) {
		String sql = "DELETE FROM student WHERE id=?";
		jdbcTemplate.update(sql, id);
	}
	
}
