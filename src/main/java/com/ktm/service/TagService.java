package com.ktm.service;

import com.ktm.model.Tag;

import java.util.List;

public interface TagService {

    List<Tag> findAll();

    void insert(Tag tag);

    List<Tag> findByType(String type);
}
