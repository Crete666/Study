package member;

import java.util.Date;

// Java Bean 정의
//  - 순수 Java Class로
//    field는 private로 선언
//    default constructor를 가짐
//    getter / setter method를 가짐
public class MemberInfo {
	private String id;
	private String password;
	private String name;
	private Date registerDate;
	private String email;
	
	// default constructor
	// 생성자를 작성하지 않으면 자동으로 만들어지지만 JSP를 사용할 경우 만드는 것을 추천
	public MemberInfo() {
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
