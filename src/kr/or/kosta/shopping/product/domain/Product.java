package kr.or.kosta.shopping.product.domain;

public class Product {
	private int productId;
	private String name;
	private String picture;
	private String description;
	private int price;
	private int calorie;
	private int salesCount;
	
	public Product(){}

	public Product(int productId, String name, String picture, String description, int price, int calorie,
			int salesCount) {
		super();
		this.productId = productId;
		this.name = name;
		this.picture = picture;
		this.description = description;
		this.price = price;
		this.calorie = calorie;
		this.salesCount = salesCount;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCalorie() {
		return calorie;
	}

	public void setCalorie(int calorie) {
		this.calorie = calorie;
	}

	public int getSalesCount() {
		return salesCount;
	}

	public void setSalesCount(int salesCount) {
		this.salesCount = salesCount;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", name=" + name + ", picture=" + picture + ", description="
				+ description + ", price=" + price + ", calorie=" + calorie + ", salesCount=" + salesCount + "]";
	}
}
