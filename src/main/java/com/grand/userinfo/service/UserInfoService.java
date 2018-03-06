package com.grand.userinfo.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;

import com.grand.userinfo.entity.UserInfo;
import com.grand.userinfo.mapper.UserInfoMapper;

@Service
public class UserInfoService {

	@Resource
	private UserInfoMapper userInfoMapper;
	
	public int addUser(UserInfo userInfo){
		Date date=new Date();
		String createTime=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date);
		userInfo.setPassword(DigestUtils.md5Hex(userInfo.getPassword()));
		userInfo.setCreateTime(createTime);
		userInfo.setStatus("2");
		return userInfoMapper.addUser(userInfo);
	}

	public int login(String loginName, String password) {
		Map<String,String> map=new HashMap<String,String>();
		map.put("loginName",loginName);
		map.put("password",DigestUtils.md5Hex(password));
		return userInfoMapper.login(map);
	}
	
}
