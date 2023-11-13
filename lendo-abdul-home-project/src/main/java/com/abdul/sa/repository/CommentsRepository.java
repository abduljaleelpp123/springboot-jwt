package com.abdul.sa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abdul.sa.entity.Comments;

@Repository
public interface CommentsRepository extends JpaRepository<Comments, Long> {

}
