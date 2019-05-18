package com.yangjie.shopmanagement.service;

import java.util.List;

import com.yangjie.shopmanagement.pojo.*;

public interface ShopDetailService {
	
	public List<ShopDetail> getAll();
	
	public List<ShopDetail> createAll(int sortId);

}
