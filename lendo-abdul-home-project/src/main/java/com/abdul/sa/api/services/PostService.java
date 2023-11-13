package com.abdul.sa.api.services;

import java.util.List;

import com.abdul.sa.api.request.PostFilter;
import com.abdul.sa.entity.Post;

public interface PostService {
	
	
	public List<Post> getPostsBy(PostFilter postfilter );

}
