package com.jsplec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.jsplec.bbs.dto.BDto;

public class BDao {

	// Field

	DataSource dataSource;

	// Constructor

	public BDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mvc");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 전체 검색
	public ArrayList<BDto> productList(String queryName, String content) {
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();

			String query1 = "select productbrand, productmodel, productprice, productcategory from product ";
			String query2 = "where productbrand like '%" + queryName + "%' and productcategory like '%" + content + "%' ";
			String query3 = "group by productbrand, productmodel, productprice, productcategory";
			
			preparedStatement = connection.prepareStatement(query1 + query2 + query3);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				String productbrand = resultSet.getString("productbrand");
				String productmodel = resultSet.getString("productmodel");
				int productprice = resultSet.getInt("productprice");
				String productcategory = resultSet.getString("productcategory");

				BDto dto = new BDto(productbrand, productmodel, productprice, productcategory);
				dtos.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return dtos;

	} // list


}
