package kr.or.kosta.shopping.cart.domain;

public class Cart {
	private int cartId;
	private String memberId;
	private int productId;
	private String name;
	private String picture;
	private int price;
	private int orderCount;
	private int toppingPrice;
	private String toppingName;
	
	public Cart(){}
	public Cart(int cartId, String memberId, int productId, String name, String picture, int price, int orderCount, int toppingPrice, String toppingName) {
		this.cartId = cartId;
		this.memberId = memberId;
		this.productId = productId;
		this.name = name;
		this.picture = picture;
		this.price = price;
		this.orderCount = orderCount;
		this.toppingPrice = toppingPrice;
		this.toppingName = toppingName;
	}
	
	
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
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
	
	public int getToppingPrice() {
		return toppingPrice;
	}
	public void setToppingPrice(int toppingPrice) {
		this.toppingPrice = toppingPrice;
	}
	
	public String getToppingName() {
		return toppingName;
	}
	public void setToppingName(String toppingName) {
		this.toppingName = toppingName;
	}
	@Override
	public String toString() {
		return "Cart [memberId=" + memberId + ", productId=" + productId + ", name=" + name + ", picture=" + picture
				+ ", price=" + price + ", orderCount=" + orderCount + ", toppingPrice=" + toppingPrice
				+ ", toppingName=" + toppingName + "]";
	}
}
