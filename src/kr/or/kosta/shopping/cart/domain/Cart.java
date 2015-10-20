package kr.or.kosta.shopping.cart.domain;

public class Cart {
	private String memberId;
	private int productId;
	private String name;
	private String picture;
	private int price;
	private int orderCount;
	
	public Cart(){}
	public Cart(String memberId, int productId, String name, String picture, int price, int orderCount) {
		super();
		this.memberId = memberId;
		this.productId = productId;
		this.name = name;
		this.picture = picture;
		this.price = price;
		this.orderCount = orderCount;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getOrderCount() {
		return orderCount;
	}
	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}
	@Override
	public String toString() {
		return "Cart [memberId=" + memberId + ", productId=" + productId + ", name=" + name + ", picture=" + picture
				+ ", price=" + price + ", orderCount=" + orderCount + "]";
	}
}
