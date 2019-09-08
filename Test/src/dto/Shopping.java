package dto;
import java.io.Serializable;
public class Shopping  implements Serializable {

 private String id; //��ǰ ���̵�
 private String subject; // ��ǰ ǰ�� 
 private Integer price; //�ʰ��� 
 private String size; //�ʻ�����
 private String filename; // �� �̹���
 
 
  public Shopping() {
	  super();
  }
  
  public Shopping(String id, String subject, Integer price, String size) {
	  this.id = id;
	  this.subject = subject;
	  this.price = price;
	  this.size = size;
  }
  
  public String getId() {
	  return id;
  }
  
  public String getSubject() {
	  return subject;
  }
  public Integer getPrice() {
	  return price;
  }
  public String getSize() {
	  return size;
  }
  public String getFilename() {
	  return filename;
  }
  
  public void setId(String id) {
	  this.id=id;
  }
  public void setSubject(String subject) {
	  this.subject=subject;
  }
  public void setPrice(Integer price) {
	  this.price=price;
  }
  public void setSize(String size) {
	  this.size= size;
  }
  public void setFilename(String filename) {
	  this.filename= filename;
  }
  

}
