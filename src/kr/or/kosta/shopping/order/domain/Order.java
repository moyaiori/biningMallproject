package kr.or.kosta.shopping.order.domain;

public class Order {
	private int orderNum;
	private String memberId;
	private String address;
	private String address2;
	private String orderDate;
	private String payment;
	private String recipient;
	private String productName;
	private String toppingName;
	private String comment;
	private String totalPrice;
	
	public Order(){}

	public Order(int orderNum, String memberId, String address, String address2, String orderDate, String payment,
			String recipient, String productName, String toppingName, String comment, String totalPrice) {
		this.orderNum = orderNum;
		this.memberId = memberId;
		this.address = address;
		this.address2 = address2;
		this.orderDate = orderDate;
		this.payment = payment;
		this.recipient = recipient;
		this.productName = productName;
		this.toppingName = toppingName;
		this.comment = comment;
		this.totalPrice = totalPrice;
	}



	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getToppingName() {
		return toppingName;
	}

	public void setToppingName(String toppingName) {
		this.toppingName = toppingName;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "Order [orderNum=" + orderNum + ", memberId=" + memberId + ", address=" + address + ", address2="
				+ address2 + ", orderDate=" + orderDate + ", payment=" + payment + ", recipient=" + recipient
				+ ", productName=" + productName + ", toppingName=" + toppingName + ", comment=" + comment
				+ ", totalPrice=" + totalPrice + "]";
	}
}
