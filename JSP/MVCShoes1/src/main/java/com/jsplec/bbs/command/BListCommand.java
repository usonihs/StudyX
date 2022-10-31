package com.jsplec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;
import com.jsplec.bbs.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// Database 에서 정보 가져오기

		String queryName = request.getParameter("query");
		String content = request.getParameter("content");

		if (queryName == null) {
			queryName = "";
			content = "";
		}
		BDao dao = new BDao();
		ArrayList<BDto> dtos = dao.productList(queryName, content);
		request.setAttribute("productList", dtos);
	}

}
