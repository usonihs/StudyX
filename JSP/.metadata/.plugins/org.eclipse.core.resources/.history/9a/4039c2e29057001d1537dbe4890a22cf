package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;

public class BWriteCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		String olName = request.getParameter("olName"); // "bName" = write_view 에 있는 bName
		String olTitle = request.getParameter("olTitle");

		BDao dao = new BDao();
		dao.write(olName, olTitle);
	}

}
