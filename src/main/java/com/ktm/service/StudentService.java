package com.ktm.service;

import com.ktm.model.DTO.StudentDTO;
import com.ktm.model.Student;

import java.util.List;

public interface StudentService {


    List<StudentDTO> findAll();
}
