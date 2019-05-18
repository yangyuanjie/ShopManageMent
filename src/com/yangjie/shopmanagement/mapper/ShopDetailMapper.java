package com.yangjie.shopmanagement.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yangjie.shopmanagement.pojo.*;

public interface ShopDetailMapper {
	
	public List<ShopDetail> getAll();
	
	public List<ShopDetail> createAll(@Param("sortId") Integer sortId);

}
