package jdbc_p;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class MemberDTO {
	String pid, pname, pw, tel;
	int no, age;
	boolean marriage;
	Date reg_date;

	public MemberDTO() {
		System.out.println("MemberDTO 기본 생성자 실행");
	}

	public MemberDTO(String pid, int no, boolean marriage) {
		this.pid = pid;
		this.no = no;
		this.marriage = marriage;
	}

	public MemberDTO(String pid, String pname) {
		this.pid = pid;
		this.pname = pname;

	}

	public MemberDTO(String pid, String pname, String pw) {
		this.pid = pid;
		this.pname = pname;
		this.pw = pw;

	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public void setNo(String no) {
		if (no != null) {
			this.no = Integer.parseInt(no);
		}
	}

	public boolean isMarriage() {
		return marriage;
	}
	
	public int getMarriageInt() {
		if(marriage)
			return 1;
		return 0;
	}

	public void setMarriage(boolean marriage) {
		this.marriage = marriage;
	}
	
	public void setMarriage(int marriage) {
		this.marriage = marriage ==1;
	}

	public void init(HttpServletRequest request) {
		this.pid = request.getParameter("pid");

		if (request.getParameter("no") != null) {
			this.no = Integer.parseInt(request.getParameter("no"));
		}

		if (request.getParameter("marriage") != null) {
			this.marriage = request.getParameter("marriage").equals("true") ? true : false;
		}
	}

	@Override
	public String toString() {
		return "MemberDTO [pid=" + pid + ", pname=" + pname + ", pw=" + pw + ", tel=" + tel + ", no=" + no + ", age="
				+ age + ", marriage=" + marriage + ", reg_date=" + reg_date + "]";
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

}