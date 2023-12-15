package com.multi.api;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class Movie2Controller {

	@Autowired
	Movie2DAO movie2DAO;
	
	@RequestMapping("insert2")
	public void insert2(Movie2VO movie2vo, 
						HttpServletRequest request,
						MultipartFile file, 
						Model model) throws IOException {
		//파일첨부한 경우에는 file이름 텍스트 + 이미지파일자체 
		System.out.println(movie2vo);
		
		//1. 파일의 이름 + 파일 저장 위치를 알아와야한다. ==> String!
		String savedName = file.getOriginalFilename();
		String uploadPath= request.getSession().getServletContext().getRealPath("resources/upload");
		System.out.println(uploadPath + "/" + savedName);
		
		//2. File객체(폴더/디렉토리 + 파일명)를 생성 ==> 파일을 인식(램에 저장)
		File target = new File(uploadPath + "/" + savedName);
		
		//3. 서버 컴퓨터에 파일을 저장시켜야한다. ==> resources아래에 저장! 
		file.transferTo(target);
		
		movie2vo.setImg(savedName);
		movie2DAO.insert2(movie2vo);
		model.addAttribute("vo", movie2vo);
	}
	
}
