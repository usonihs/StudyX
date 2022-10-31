package com.jsplec.bbs.dto;

public class BDto {

	// Field

	String productbrand;
	String productmodel;
	int productprice;
	String productcategory;

	// Constructor

	public BDto() {
		// TODO Auto-generated constructor stub
	}

	public BDto(String productbrand, String productmodel, int productprice, String productcategory) {
		super();
		this.productbrand = productbrand;
		this.productmodel = productmodel;
		this.productprice = productprice;
		this.productcategory = productcategory;
	}

	public String getProductbrand() {
		return productbrand;
	}

	public void setProductbrand(String productbrand) {
		this.productbrand = productbrand;
	}

	public String getProductmodel() {
		return productmodel;
	}

	public void setProductmodel(String productmodel) {
		this.productmodel = productmodel;
	}

	public int getProductprice() {
		return productprice;
	}

	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}

	public String getProductcategory() {
		return productcategory;
	}

	public void setProductcategory(String productcategory) {
		this.productcategory = productcategory;
	}

}
