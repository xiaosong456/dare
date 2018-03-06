package com.grand.homepage.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.grand.common.Upload;
import com.grand.homepage.entity.HpEntity;
import com.grand.homepage.service.HpService;

@Controller
@RequestMapping("/hp")
public class HpController {

	@Resource
	private HpService hpService;
	
	@Resource
	private Upload upload;
	
	/**
	 * 获取首页图片列表
	 * @param title
	 * @param author
	 * @param createTime
	 * @param picName
	 * @return
	 */
	@RequestMapping("/list")
	@ResponseBody
	public List<HpEntity> getHpList(String title,String author,String createTime,String picName){
		return hpService.getlistHp(title,author,createTime,picName);
	}
	
	/**
	 * 新增首页图片
	 * @param hp
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/add")
	public int addHp(HpEntity hp,MultipartFile file) throws IOException{
		hp.setPicture((byte [])upload.filetobyte(file).get("data"));
		return hpService.addHp(hp);
	}
	
	/**
	 * 根据id查找实体
	 * @param id
	 * @return
	 */
	@RequestMapping("/detail")
	@ResponseBody
	public HpEntity getHpById(String id){
		return hpService.getHpById(id);
	}
	
	/**
	 * 根绝id来获取图片用做前台展示
	 * @param id
	 * @return
	 */
	@RequestMapping("/img")
	@ResponseBody
	public byte[] getImgById(String id){
		return hpService.getHpById(id).getPicture();
	}
		
}
