package mvc.model;

public class BoardDTO {
	private int num; //����
	private String id; //����� ���̵�
	private String name; // ����� �̸�
	private String subject; //��� ����
	private String content; //��� ����
	private String regist_day; //��� ����
	private int hit; //��ȸ ��
	private String ip; // IP �ּ�
	private int page; //������ ��
	public int limit;
	private String text;
	private String itmes;
	
	//�⺻ ������ 
	public BoardDTO() {
		super();
	}
	
	//Getter()�޼ҵ�� Setter�޼ҵ�
	public int getNum() {
		return num;
	}
	
	public void setNum(int num) {
		this.num = num;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String id) {
		this.name = name;
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
	
	public String getRegist_day() {
		return regist_day;
	}
	public void setRegist_day(String regist_day) {
		this.regist_day = regist_day;
	}
	
	public int getHit() {
		return hit;
	}
	
	public void setHit(int hit) {
		this.hit = hit;
	}
	
	public String getIp() {
		return ip;
	}
	
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	public int getPage() {
		return page;
	}
	
	public void setPage(int page) {
		this.page = page;
	}
	
	public int getLimit() {
		return limit;
	}
	
	public void setLimit(int limit) {
		this.limit = limit;
	}
	
}
