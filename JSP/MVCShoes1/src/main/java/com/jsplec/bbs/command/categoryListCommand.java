package com.jsplec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.brandDao;
import com.jsplec.bbs.dao.categoryDao;
import com.jsplec.bbs.dto.brandDto;
import com.jsplec.bbs.dto.categoryDto;

public class categoryListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		categoryDao dao = new categoryDao();
		ArrayList<categoryDto> dtos = dao.categoryList();
		request.setAttribute("categoryList", dtos);

	}

}
