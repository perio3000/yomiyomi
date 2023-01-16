package edu.global.ex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.MypageMapper;
import edu.global.ex.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageMapper mypageMapper;
	
	@Override
	public MemberVO getUser(String username) {
		log.info("getUser()..");
		
		return mypageMapper.getUser(username);
	}
	
	

}