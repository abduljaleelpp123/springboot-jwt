package com.abdul.sa.api.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abdul.sa.entity.Comments;
import com.abdul.sa.repository.CommentsRepository;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	CommentsRepository  commentsRepository;

	@Override
	public List<Comments> getAllComments() {
		
		return commentsRepository.findAll();
	}

	

}
