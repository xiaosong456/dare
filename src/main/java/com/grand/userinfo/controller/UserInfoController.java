package com.grand.userinfo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grand.userinfo.entity.UserInfo;
import com.grand.userinfo.service.UserInfoService;

@Controller
@RequestMapping("/userinfo")
public class UserInfoController {
	@Resource
	private UserInfoService userInfoService;
	
	/**
	 * 新增用户
	 * @param userInfo
	 * @return
	 */
	@RequestMapping("/addUser")
	@ResponseBody
	public int addUser(UserInfo userInfo){
		return userInfoService.addUser(userInfo);
	}
	
	/**
	 * 用户登录
	 * @param loginName
	 * @param password
	 * @return
	 */
	@RequestMapping("/login")
	@ResponseBody
	public int login(String loginName,String password){
		return userInfoService.login(loginName,password);
	}

}
