package kr.or.kosta.shopping.order.domain;

public class Order {
	private int orderNum;
	private int orderListNum;
	private String productName;
	private String productPicture;
	private int orderCount;
	private int price;
	private int totalPrice;
	
	public Order(){}

	public Order(int orderNum, int orderListNum, String productName, String productPicture, int orderCount, int price,
			int totalPrice) {
		super();
		this.orderNum = orderNum;
		this.orderListNum = orderListNum;
		this.productName = productName;
		this.productPicture = productPicture;
		this.orderCount = orderCount;
		this.price = price;
		this.totalPrice = totalPrice;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public int getOrderListNum() {
		return orderListNum;
	}

	public void setOrderListNum(int orderListNum) {
		this.orderListNum = orderListNum;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductPicture() {
		return productPicture;
	}

	public void setProductPicture(String productPicture) {
		this.productPicture = productPicture;
	}

	public int getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "Order [orderNum=" + orderNum + ", orderListNum=" + orderListNum + ", productName=" + productName
				+ ", productpicture=" + productPicture + ", orderCount=" + orderCount + ", price=" + price
				+ ", totalPrice=" + totalPrice + "]";
	}
}
