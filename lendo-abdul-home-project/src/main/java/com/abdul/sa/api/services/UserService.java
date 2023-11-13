package com.abdul.sa.api.services;

import java.util.List;

import com.abdul.sa.api.request.UserFilter;
import com.abdul.sa.entity.User;

public interface UserService {

	public List<User> getUsersBy(UserFilter userFilter );
}
