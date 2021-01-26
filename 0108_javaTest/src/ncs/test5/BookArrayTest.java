package ncs.test5;

import java.util.ArrayList;
import java.util.List;

public class BookArrayTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Book> bookList = new ArrayList<>();
		bookList.add(new Book("자바의 정석,","남궁성,",30000,"도우출판,",10));
		bookList.add(new Book("열혈강의 자바,","구정은,",29000,"",10));
		bookList.add(new Book("객체지향 JAVA8,","금영욱,",30000,"",10));
		
		for(Book b : bookList) {
			System.out.printf("%s %s %s %d원, %d%% 할인\n",
					b.getTitle(),b.getAuthor(),b.getPublisher(),b.getPrice(),(int)b.getDiscountRate());
			double price = (double)b.getPrice()-((double)b.getPrice()/b.getDiscountRate());
			System.out.printf("할인된 가격 : %d\n",(int)price);
		}
	}

}
