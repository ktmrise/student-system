package com.ktm.service;

import com.ktm.model.DTO.StudentDTO;
import com.ktm.model.DTO.StudentDTO01;
import com.ktm.model.Student;

import java.util.List;

public interface StudentService {


    List<StudentDTO> findAll();

    List<Student> SelectAll();

    List<StudentDTO01> findAllStudent();

    List<StudentDTO01> findAllStudent(String searchType, String searchValue);

    List<StudentDTO01> findAllStudent(String searchType, String searchValue, Integer currentPage);

    Integer totalCount(String searchType, String searchValue);
}
