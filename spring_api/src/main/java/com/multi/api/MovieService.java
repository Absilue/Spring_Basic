package com.multi.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService {

	@Autowired
	MovieDAO movieDAO;
	
	public void insert(MovieVO movieVO) {
		//전처리할 것이 있으면 해주세요.
		movieDAO.insert(movieVO);
	}
}
