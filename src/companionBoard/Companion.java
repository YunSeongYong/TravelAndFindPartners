package companionBoard;

public class Companion {
	private int no;
	private String id;
	private String start;
	private String end;
	private String location;
	private byte[] image;
	private String title;
	private String content;
	private int personnel;
	private String concept1;
	private String concept2;
	private String concept3;
	
	public Companion(int no, String id, String start, String end, String location, byte[] image, String title,
			String content, int personnel, String concept1, String concept2, String concept3) {
		super();
		this.no = no;
		this.id = id;
		this.start = start;
		this.end = end;
		this.location = location;
		this.image = image;
		this.title = title;
		this.content = content;
		this.personnel = personnel;
		this.concept1 = concept1;
		this.concept2 = concept2;
		this.concept3 = concept3;
	}

	public Companion(String id, String start, String end, String location, byte[] image, String title,
			String content, int personnel, String concept1, String concept2, String concept3) {
		this.id = id;
		this.start = start;
		this.end = end;
		this.location = location;
		this.image = image;
		this.title = title;
		this.content = content;
		this.personnel = personnel;
		this.concept1 = concept1;
		this.concept2 = concept2;
		this.concept3 = concept3;
	}
	
	public Companion(String start, String end, String location, byte[] image, String title, String content,
			int personnel, String concept1, String concept2, String concept3) {
		super();
		this.start = start;
		this.end = end;
		this.location = location;
		this.image = image;
		this.title = title;
		this.content = content;
		this.personnel = personnel;
		this.concept1 = concept1;
		this.concept2 = concept2;
		this.concept3 = concept3;
	}
	
	public Companion(String start, String end, String location, String title, String content,
			int personnel, String concept1, String concept2, String concept3) {
		super();
		this.start = start;
		this.end = end;
		this.location = location;
		this.title = title;
		this.content = content;
		this.personnel = personnel;
		this.concept1 = concept1;
		this.concept2 = concept2;
		this.concept3 = concept3;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getPersonnel() {
		return personnel;
	}

	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}

	public String getConcept1() {
		return concept1;
	}

	public void setConcept1(String concept1) {
		this.concept1 = concept1;
	}

	public String getConcept2() {
		return concept2;
	}

	public void setConcept2(String concept2) {
		this.concept2 = concept2;
	}

	public String getConcept3() {
		return concept3;
	}

	public void setConcept3(String concept3) {
		this.concept3 = concept3;
	}
}
