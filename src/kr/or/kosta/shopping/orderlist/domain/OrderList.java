package kr.or.kosta.shopping.orderlist.domain;

public class OrderList {
	private int orderListNum;
	private String memberId;
	private String orderDate;
	private String orderComment;
	private String address;
	private String address2;
	private int totalPrice;
	private String payment;
	private String recipient;
	
	public OrderList() {}

	public OrderList(int orderListNum, String memberId, String orderDate, String orderComment, String address,
			String address2, int totalPrice, String payment, String recipient) {
		super();
		this.orderListNum = orderListNum;
		this.memberId = memberId;
		this.orderDate = orderDate;
		this.orderComment = orderComment;
		this.address = address;
		this.address2 = address2;
		this.totalPrice = totalPrice;
		this.payment = payment;
		this.recipient = recipient;
	}

	public int getOrderListNum() {
		return orderListNum;
	}

	public void setOrderListNum(int orderListNum) {
		this.orderListNum = orderListNum;
	}

	public String getMemeberId() {
		return memberId;
	}

	public void setMemeberId(String memberId) {
		this.memberId = memberId;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderComment() {
		return orderComment;
	}

	public void setOrderComment(String orderComment) {
		this.orderComment = orderComment;
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

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
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

	@Override
	public String toString() {
		return "OrderList [orderListNum=" + orderListNum + ", memberId=" + memberId + ", orderDate=" + orderDate
				+ ", orderComment=" + orderComment + ", address=" + address + ", address2=" + address2 + ", totalPrice="
				+ totalPrice + ", payment=" + payment + ", recipient=" + recipient + "]";
	}
}
