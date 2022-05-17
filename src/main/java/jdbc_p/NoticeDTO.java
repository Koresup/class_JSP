package jdbc_p;

public class NoticeDTO {
	
	int no, count;
	String title, name;
	String date;
	
	public NoticeDTO() {
	
	}

	public NoticeDTO(int no, String title, String name, String date, int count) {
		this.no = no;
		this.title = title;
		this.name = name;
		this.date = date;
		this.count = count;		
	}
	
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "NoticeDTO [no=" + no + ", count=" + count + ", title=" + title + ", name=" + name + ", date=" + date
				+ "]";
	}
	
	
	
	
	
}
	