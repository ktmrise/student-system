package com.ktm.service.impl;

import com.ktm.mapper.*;
import com.ktm.model.*;
import com.ktm.model.DTO.StudentDTO;
import com.ktm.model.DTO.StudentDTO01;
import com.ktm.service.StudentService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


@Service
@Transactional
public class StudentServiceImpl implements StudentService {


    @Resource
    private StudentMapper studentMapper;

    @Resource
    private TagMapper tagMapper;

    @Resource
    private StudentAndTagMapper studentAndTagMapper;

    @Resource
    private CityMapper cityMapper;

    @Resource
    private GroupMapper groupMapper;

    @Resource
    private ClazzMapper clazzMapper;


    @Override
    public List<StudentDTO> findAll() {

        List<Student> students = studentMapper.selectAll();
        List<StudentDTO> studentDTOS = new ArrayList<>();
        for (Student student : students) {
            StudentDTO studentDTO = new StudentDTO();
            BeanUtils.copyProperties(student, studentDTO);
            StudentAndTag studentAndTag = studentAndTagMapper.selectByStudentId(student.getId());
            Tag tag = tagMapper.selectById(studentAndTag.getTagId());
            City city = cityMapper.selectById(student.getCityId());
//            Group group = groupMapper.selectById(student.getGroupId());
            String groupName = groupMapper.findNameById(student.getGroupId());

//            Clazz clazz = clazzMapper.selectById(student.getClazzId());
            String clazzName = clazzMapper.findNameById(student.getClazzId());
            studentDTO.setTagName(tag.getName());
            studentDTO.setCityName(city.getName());
            studentDTO.setGroupName(groupName);
            studentDTO.setClazzName(clazzName);
            studentDTOS.add(studentDTO);

        }
        return studentDTOS;
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Student> SelectAll() {
        return studentMapper.selectAll();
    }

    @Override
    public List<StudentDTO01> findAllStudent() {
        return studentMapper.findAll();
    }

    @Override
    public List<StudentDTO01> findAllStudent(String searchType, String searchValue) {

        return studentMapper.find(searchType, searchValue);
    }

    @Override
    public List<StudentDTO01> findAllStudent(String searchType, String searchValue, Integer currentPage) {
        Integer offset = (currentPage - 1) * 2;
        return studentMapper.findByPage(searchType, searchValue, offset);
    }

    @Override
    public Integer totalCount(String searchType, String searchValue) {

        return studentMapper.totalCount(searchType, searchValue);
    }

}
