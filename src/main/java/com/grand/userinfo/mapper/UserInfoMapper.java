package com.grand.userinfo.mapper;

import java.util.Map;

import com.grand.userinfo.entity.UserInfo;

public interface UserInfoMapper {

	int addUser(UserInfo userInfo);

	int login(Map<String, String> map);

}
