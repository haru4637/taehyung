package chap06.model;

//데이터 클레스 , 모델, dto,vo,...
//컬렉션과 함께 사용하면서 데이터를 담아놓기 위한 용도의 클래스
public class PizzaOrder {
	
	String size;
	int qty;
	
	//피자의 정보를 받아놓기위해 만듦
	public PizzaOrder(String size, int qty) {
		this.size = size;
		this.qty = qty;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}
	
 @Override
public String toString() {
	return String.format("<li>%s,%d판</li>", size,qty);
}
	
}
