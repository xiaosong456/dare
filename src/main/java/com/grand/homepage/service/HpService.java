package com.grand.homepage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.grand.homepage.entity.HpEntity;
import com.grand.homepage.mapper.HpMapper;
import org.springframework.stereotype.Service;

@Service
public class HpService {
	
	@Resource
	private HpMapper hpMapper;
	
	public List<HpEntity> getlistHp(String title,String author,String createTime,String picName){
		Map<String,String> map=new HashMap<String,String>();
		map.put("title",title );
		map.put("author",author );
		map.put("createTime",createTime );
		map.put("picName",picName );
		return hpMapper.getlistHp(map);
	}

	public int addHp(HpEntity hp) {
		return hpMapper.addHp(hp);
	}

	public HpEntity getHpById(String id) {
		return hpMapper.getHpById(id);
	}

	public byte[] getImgById(String id) {
		return hpMapper.getImgById(id);
	}
	
}
