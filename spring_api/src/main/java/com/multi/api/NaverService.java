package com.multi.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NaverService {

	@Autowired
	NaverDAO dao;
	
	public void insert(NaverVO naverVO) {
		//db처리하기 전 전처리/후처리 
		//db처리 요청 
		dao.insert(naverVO);
	}
}
