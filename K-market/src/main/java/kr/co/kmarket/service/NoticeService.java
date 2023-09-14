package kr.co.kmarket.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.kmarket.dao.NoticeDAO;

public enum NoticeService {
	
	INSTANCE;
	
	private NoticeDAO dao = NoticeDAO.getInstance();
	
	// 로그 설정
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	

	public void insertNotice(NoticeDAO dto) {
		dao.insertNotice(dto);
	}
	
	public NoticeDAO selectNotice(String noticeNo) { // 편의를 위해서 int noticeNo 가 아닌 String 으로 설정해둠 
		return dao.selectNotice(noticeNo);
	}
	
	public List<NoticeDAO> selectNotices() {
		return dao.selectNotices();
	}
	
	public void updateNotice(NoticeDAO dto) {
		dao.updateNotice(dto);
	}
	
	public void deleteNotice(String noticeNo) {
		dao.deleteNotice(noticeNo);
	}
	
	
}