package com.team04.service;

import java.util.HashMap;
import java.util.List;

import com.team04.domain.BookmarkVO;

public interface BookmarkService {

	public List<BookmarkVO> bookmarkGetList(HashMap map);
		
	public void bookmarkUpdateLike(int listNum);
	
	public void bookmarkUpdateLikeMa(int listNum);
		
		
}
