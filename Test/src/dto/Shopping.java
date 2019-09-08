package dto;
import java.io.Serializable;
public class Shopping  implements Serializable {

 private String id; //상품 아이디
 private String subject; // 상품 품목 
 private Integer price; //옷가격 
 private String size; //옷사이즈
 private String filename; // 옷 이미지
 
 
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
