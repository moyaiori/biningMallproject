package kr.or.kosta.shopping.member.domain;

public class Member {
	private String memberId;
	private String passwd;
	private String birth;
	private String gender;
	private String phoneNumber;
	private String phoneNumber2;
	private String phoneNumber3;
	private String address;
	private String address2;
	private String name;
	private String email;
	private String grade;
	private int point;
	
	public Member(){}

	public Member(String memberId, String passwd, String birth, String gender, String phoneNumber, String phoneNumber2,
			String phoneNumber3, String address, String address2, String name, String email, String grade, int point) {
		super();
		this.memberId = memberId;
		this.passwd = passwd;
		this.birth = birth;
		this.gender = gender;
		this.phoneNumber = phoneNumber;
		this.phoneNumber2 = phoneNumber2;
		this.phoneNumber3 = phoneNumber3;
		this.address = address;
		this.address2 = address2;
		this.name = name;
		this.email = email;
		this.grade = grade;
		this.point = point;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPhoneNumber2() {
		return phoneNumber2;
	}

	public void setPhoneNumber2(String phoneNumber2) {
		this.phoneNumber2 = phoneNumber2;
	}

	public String getPhoneNumber3() {
		return phoneNumber3;
	}

	public void setPhoneNumber3(String phoneNumber3) {
		this.phoneNumber3 = phoneNumber3;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", passwd=" + passwd + ", birth=" + birth + ", gender=" + gender
				+ ", phoneNumber=" + phoneNumber + ", phoneNumber2=" + phoneNumber2 + ", phoneNumber3=" + phoneNumber3
				+ ", address=" + address + ", address2=" + address2 + ", name=" + name + ", email=" + email + ", grade="
				+ grade + ", point=" + point + "]";
	}
}
