package kr.or.kosta.shopping.article.domain;

public class Article {
	private int articleId;  // 게시글의 식별번호
	private int boardId;	// 소속 게시판을 알아내긔
	private String memberId;  // 글 작성자
 	private String subject; // 글 제목
	private String content; // 글 내용
	private String regdate; // 글 작성일
	private int hitcount;   // 조회수 
	private int groupNum; // 그룹 번호(댓글과 게시글을 같은 번호로 관리한다)
	private int stepNum;  // 계층의 깊이(들여쓰기 level) = 댓글을 위해서 필요하다
	private int orderNum; // 그룹내 게시글 순서(댓글과 함께 그룹화 된다)
	
	/** 생성자 오버로딩 */
	public Article(){
		
	} // Java Bean을 위한 디폴트 생성자
	/** 생성자 오버로딩 - 전체 */
	public Article(int articleId, int boardId, String memberId, String subject, String content, String regdate,
			int hitcount, int groupNum, int stepNum, int orderNum) {
		this.articleId = articleId;
		this.boardId = boardId;
		this.memberId = memberId;
		this.subject = subject;
		this.content = content;
		this.regdate = regdate;
		this.hitcount = hitcount;
		this.groupNum = groupNum;
		this.stepNum = stepNum;
		this.orderNum = orderNum;
	}
	public Article(int articleId, String memberId, String subject,String regdate, int hitcount, int stepNum){
		this.articleId = articleId;
		this.memberId = memberId;
		this.subject=subject;
		this.regdate=regdate;
		this.hitcount = hitcount;
		this.stepNum=stepNum;
	}
	/*공지사항 글 리스트 보여주기 위한 것.*/
	public Article(int boardId,String memberId, String subject, String content){
		this.boardId = boardId;
		this.memberId= memberId;
		this.subject = subject;
		this.content = content;
	}
	public Article(int boardId,int articleId,String memberId, String subject, String content){
		this.boardId = boardId;
		this.articleId =articleId;
		this.memberId= memberId;
		this.subject = subject;
		this.content = content;
	}
	/** setter, getter */
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
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
	public int getHitcount() {
		return hitcount;
	}
	public void setHitcount(int hitcount) {
		this.hitcount = hitcount;
	}
	public int getGroupNum() {
		return groupNum;
	}
	public void setGroupNum(int groupNum) {
		this.groupNum = groupNum;
	}
	public int getStepNum() {
		return stepNum;
	}
	public void setStepNum(int stepNum) {
		this.stepNum = stepNum;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	@Override
	public String toString() {
		return "Article [articleId=" + articleId + ", boardId=" + boardId + ", memberId=" + memberId + ", subject="
				+ subject + ", content=" + content + ", regdate=" + regdate + ", hitcount=" + hitcount + ", groupNum=" + groupNum + ", stepNum=" + stepNum + ", orderNum=" + orderNum + "]";
	}

	
}
