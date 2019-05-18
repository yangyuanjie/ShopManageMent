package com.yangjie.shopmanagement.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.yangjie.shopmanagement.mapper.ShopDetailMapper;
import com.yangjie.shopmanagement.pojo.ShopDetail;
import com.yangjie.shopmanagement.service.ShopDetailService;

@Service
public class ShopDetailServiceImpl implements ShopDetailService {

	@Autowired
	private  ShopDetailMapper bm;
	public List<ShopDetail> getAll() {
		List<ShopDetail> BugDetailList=bm.getAll();
		return BugDetailList;
	}

	public List<ShopDetail> createAll(int sortId) {
		List<ShopDetail> BugDetailList=bm.createAll(sortId);
		return BugDetailList;
	}
}
