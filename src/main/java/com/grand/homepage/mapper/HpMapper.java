package com.grand.homepage.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.grand.homepage.entity.HpEntity;

public interface HpMapper {

	List<HpEntity> getlistHp(Map map);

	int addHp(HpEntity hp);

	HpEntity getHpById(@Param("id")String id);

	byte[] getImgById(String id);
	
}
