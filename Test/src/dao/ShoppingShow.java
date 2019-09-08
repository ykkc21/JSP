package dao;
import java.util.ArrayList;
import dto.Shopping;
public class ShoppingShow {

	private ArrayList<Shopping> listShoppings = new ArrayList<Shopping>();
	private static ShoppingShow instance = new ShoppingShow();
	
	
	public static ShoppingShow getInstance() {
		return instance;
	}
	
	public ShoppingShow() {
		Shopping shirt = new Shopping("A101","¼ÅÃ÷",20000,"XL");
		shirt.setFilename("shirt.jpeg");
		
		
		Shopping mantoman = new Shopping("A102","¸ÇÅõ¸Ç",23000,"XL");
		mantoman.setFilename("mantoan.jpg");

		Shopping Pants = new Shopping("A103","½½·¢½º ",31000,"XL");
		Pants.setFilename("Pants.jpg");
		
		
		listShoppings.add(shirt);
		listShoppings.add(mantoman);
		listShoppings.add(Pants);
	}
	
	public ArrayList<Shopping> getAllShoppings(){
		return listShoppings;
	}
	
	public Shopping getId(String id) {
		Shopping shoppingByid = null;
		
		for(int i=0;i<listShoppings.size(); i++) {
			Shopping shopping = listShoppings.get(i);
			if(shopping!=null&&shopping.getId() != null && shopping.getId().equals(id) ) {
				shoppingByid = shopping;
				break;
			}
		}
		return shoppingByid;
	}
	
	public void addShopping(Shopping shopping) {
		listShoppings.add(shopping);
	}
}
