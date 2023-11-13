package com.abdul.sa.api.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.abdul.sa.api.request.PostFilter;
import com.abdul.sa.entity.Post;
import com.abdul.sa.repository.PostRepository;

import jakarta.persistence.criteria.Predicate;

@Service
public class PostServiceImpl implements PostService {
	@Autowired
	PostRepository postRepository;

	/**
	 *
	 */
	@Override
	public List<Post> getPostsBy(PostFilter postfilter) {
		List<Post>  postlist = null;
		if(postfilter != null) {
			postlist = getPostByFilter(postfilter);
		}else {
			postlist = postRepository.findAll();
		}
		
		return postlist;
	}
	
	
	
	
	/**
	 * @param filter
	 * @return
	 */
	private List<Post> getPostByFilter(PostFilter filter) {

		Specification<Post> spec = (root, query, criteriaBuilder) -> {
			Predicate predicate = criteriaBuilder.conjunction();
			if (filter != null) {

				
				if (filter.postid > 0 ) {
					predicate = criteriaBuilder.and(predicate, criteriaBuilder.equal(root.get("postid"), filter.postid ));
				}

				if (filter.user_id > 0) {
					predicate = criteriaBuilder.and(predicate,
							criteriaBuilder.equal(root.get("user_id"), filter.user_id));
				}

				

			}
			return predicate;
		};

		List<Post> classificationList = postRepository.findAll(spec);

		return classificationList;

	}

}
