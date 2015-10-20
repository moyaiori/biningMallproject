package kr.or.kosta.shopping.comment.domain;

public class Comment {
	private int commentId;
	private int productId;
	private String memberId;
	private String content;
	private String regdate;
	private String satisfaction;
	private int groupNum;
	private int orderNum;
	private int stepNum;
	
	public Comment(){}
	public Comment(int commentId, int productId, String memberId, String content, String regdate, String satisfaction,
			int groupNum, int orderNum, int stepNum) {
		super();
		this.commentId = commentId;
		this.productId = productId;
		this.memberId = memberId;
		this.content = content;
		this.regdate = regdate;
		this.satisfaction = satisfaction;
		this.groupNum = groupNum;
		this.orderNum = orderNum;
		this.stepNum = stepNum;
	}
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getSatisfaction() {
		return satisfaction;
	}
	public void setSatisfaction(String satisfaction) {
		this.satisfaction = satisfaction;
	}
	public int getGroupNum() {
		return groupNum;
	}
	public void setGroupNum(int groupNum) {
		this.groupNum = groupNum;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public int getStepNum() {
		return stepNum;
	}
	public void setStepNum(int stepNum) {
		this.stepNum = stepNum;
	}
	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", productId=" + productId + ", memberId=" + memberId + ", content="
				+ content + ", regdate=" + regdate + ", satisfaction=" + satisfaction + ", groupNum=" + groupNum
				+ ", orderNum=" + orderNum + ", stepNum=" + stepNum + "]";
	}
}
