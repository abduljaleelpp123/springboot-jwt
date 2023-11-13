package com.abdul.sa.api.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.abdul.sa.api.request.PostFilter;
import com.abdul.sa.api.request.UserFilter;
import com.abdul.sa.api.services.CommentService;
import com.abdul.sa.api.services.PostService;
import com.abdul.sa.api.services.UserService;

import jakarta.validation.Valid;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/service")
public class ServiceCtrl {
	

	@Autowired
	UserService userService;

	@Autowired
	CommentService commentService;
	
	
	@Autowired
	PostService postService;
	
	
	

	/**
	 * @return
	 */
	@GetMapping("/users")
	public ResponseEntity<?> getUsers() {

		return ResponseEntity.ok(userService.getUsersBy(null));
	}

	/** get all posts available in database.
	 * @return <code> List  </code> of the post object
	 */
	@GetMapping("/posts")
	public ResponseEntity<?> getPosts() {

		return ResponseEntity.ok(postService.getPostsBy(null));
	}

	/**
	 * @return
	 */
	@GetMapping("/comments")
	public ResponseEntity<?> getComments() {

		return ResponseEntity.ok(commentService.getAllComments());
	}
	
	@PostMapping("/users")
	public ResponseEntity<?> getUsersBy(
			@Valid @RequestBody UserFilter userfilter) {
		
		System.out.println(userfilter.toString());
		return ResponseEntity.ok(userService.getUsersBy(userfilter));

	}
	
	
	@PostMapping("/posts")
	public ResponseEntity<?> getPostsBy(
			@Valid @RequestBody PostFilter postFilter) {
		
		System.out.println(postFilter.toString());
		return ResponseEntity.ok(postService.getPostsBy(postFilter));

	}
	

}
