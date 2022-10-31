package com.jsplec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.brandDao;
import com.jsplec.bbs.dto.brandDto;

public class brandListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		brandDao dao = new brandDao();
		ArrayList<brandDto> dtos = dao.brandList();
		request.setAttribute("brandList", dtos);

	}

}
