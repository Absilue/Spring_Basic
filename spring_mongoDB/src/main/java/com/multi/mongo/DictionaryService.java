package com.multi.mongo;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;

@Service //controller --- service(전처리/후처리) --- dao 
public class DictionaryService {

	@Autowired
	DictionaryDAO dao;
	
	public void emotion(String sentence) {
		//komoran 이용해서 명사만 추출후 프린트 
		Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);
		KomoranResult result = komoran.analyze(sentence);
		List<String> list = result.getNouns();
		System.out.println(list);
		for (String s : list) {
			DictionaryVO vo = dao.one(s);
			if(vo != null) {
				System.out.println(vo.getJumsu());
			}
		}
	}
}
