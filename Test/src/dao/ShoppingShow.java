package dao;
import java.util.ArrayList;
import dto.Shopping;
public class ShoppingShow {

	private ArrayList<Shopping> listShoppings = new ArrayList<Shopping>();
	
	
	public ShoppingShow() {
		Shopping shirt = new Shopping("A101","¼ÅÃ÷",20000,"XS~XXL");
		shirt.setImages("shirt.jpeg");
		
		listShoppings.add(shirt);
	}
	
	public ArrayList<Shopping> getAllShoppings(){
		return listShoppings;
	}
}
