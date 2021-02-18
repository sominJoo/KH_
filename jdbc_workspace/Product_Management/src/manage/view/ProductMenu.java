package manage.view;

import java.util.List;
import java.util.Scanner;

import manage.controller.ProductController;
import manage.model.vo.Product;
import manage.model.vo.ProductIO;

public class ProductMenu {
	Scanner sc = new Scanner(System.in);
	private ProductController controller = new ProductController();
	
	/**
	 * 메인메뉴
	 */
	public void mainMenu() {
		String str	= "***** 상품재고관리프로그램 *****\n"
				+"1. 전체상품조회\n"
				+"2. 상품아이디검색\n"
				+"3. 상품명검색\n"
				+"4. 상품추가\n"
				+"5. 상품정보변경\n"
				+"6. 상품삭제\n"
				+"7. 상품입/출고 메뉴\n"
				+"9. 프로그램종료\n"
				+"************************\n";
		while(true) {
			System.out.print(str);
			System.out.print("선택 : ");
			String choice = sc.nextLine();
			
			Product product =null;
			List<Product> list= null;
			String productStr = null;
			String msg = null;
			int result = 0;
			switch(choice) {
			case "1" : 	//전체조회
				list = controller.selectAll();
				displayList(list);
				break;
			case "2" : //id 조회
				productStr = inputProductID();
				product = controller.selectId(productStr);
				displayProduct(product);
				break;
			case "3" : 	//상품명 조회(일부만 검색가능)
				productStr = inputProductName();
				list = controller.selectName(productStr);
				displayList(list);
				break;
			case "4" : 	//상품 추가
				product = inputProduct();
				result = controller.insertProduct(product);
				msg = result >0 ? "상품 추가 성공" : "상품 추가 실패";
				displayMsg(msg);
				break;
			case "5" :	//상품정보변경  -> updateMenu()
				System.out.print("변경할 ");
				productStr = inputProductID();
				product = controller.selectId(productStr);
				if(product != null) 	//결과가 존재하면
					updateMenu(productStr);
				else
					System.out.println(">>>> 회원정보 없음");
				break;
			case "6" :  //상품삭제(id를 입력받음)
				productStr = inputProductID();
				result = controller.deleteProduct(productStr);
				msg = result > 0 ? "상품 삭제 성공" : "상품 삭제 실패";
				displayMsg(msg);
				break;
			case "7" : 	//상품 입출고 -> ioMenu()
				ioMenu();
				break;
			case "9" : 
				System.out.print("정말로 끝내시겠습니까?(y/n) : ");
				if(sc.nextLine().charAt(0) == 'y')
					return;	//현재 메소드를 호출한 곳으로 돌아감
				break;
			default : System.out.println("잘못 입력하셨습니다.");
			}
		}
	}
	/**
	 * 5.수정메뉴
	 */
	public void updateMenu(String productId) {
		System.out.println(productId+"의 정보변경");
		String str	= "***** 상품정보변경메뉴 *****\n"
				+"1. 상품명변경\n"
				+"2. 가격변경\n"
				+"3. 설명변경\n"
				+"9. 메인메뉴로 돌아가기\n"
				+"************************\n";
		while(true) {
			System.out.print(str);
			System.out.print("선택 : ");
			String choice = sc.nextLine();
			Product product = new Product();
			String productStr = null;
			int result = 0;
			
			product.setProduct_id(productId);
			switch(choice) {
			case "1" : 
				System.out.print("변경할 상품명를 입력하세요 : ");
				productStr = sc.nextLine();
				product.setP_name(productStr);
				result = controller.updateProduct(product);
				displayCheck(result,productId);
				break;
			case "2" : 
				System.out.print("변경할 가격를 입력하세요 : ");
				int price = sc.nextInt();
				sc.nextLine();
				product.setPrice(price);
				result = controller.updateProduct(product);
				displayCheck(result,productId);
				break;
			case "3" : 
				System.out.print("변경할 설명를 입력하세요 : ");
				productStr = sc.nextLine();
				product.setDescription(productStr);
				result = controller.updateProduct(product);
				displayCheck(result,productId);
				break;
			case "9" : 
				System.out.print("메인메뉴로 돌아가시겠습니까?(y/n) : ");
				if(sc.nextLine().charAt(0) == 'y')
					return;
				break;
			default : System.out.println("잘못 입력하셨습니다.");
			}
		}
	}
	
	/**
	 * 7. 입출고 메뉴
	 */
	public void ioMenu() {
		String str	= "***** 상품입출고메뉴 *****\n"
				+"1. 전체입출고내역조회\n"
				+"2. 상품입고\n"
				+"3. 상품출고\n"
				+"9. 메인메뉴로 돌아가기\n"
				+"************************\n";
		while(true) {
			System.out.print(str);
			System.out.print("선택 : ");
			String choice = sc.nextLine();
			List<ProductIO> list = null;
			ProductIO product_io = null;
			String msg = null;
			int result = 0;
			switch(choice) {
			case "1" : 
				list = controller.selectAll_IO();
				displayList_IO(list);
				break;
			case "2" : 
				product_io = inputProductIO(2);
				result = controller.insertProductIO(product_io);
				msg = result >0 ? "입고 성공" : "입고 실패";
				displayMsg(msg);
				break;
			case "3" : 
				product_io = inputProductIO(3);
				result = controller.insertProductIO(product_io);
				msg = result >0 ? "출고 성공" : "출고 실패";
				displayMsg(msg);
				break;
			case "9" : 
				System.out.print("메인메뉴로 돌아가시겠습니까?(y/n) : ");
				if(sc.nextLine().charAt(0) == 'y')
					return;
				break;
			default : System.out.println("잘못 입력하셨습니다.");
			}
		}
	}
	
	
	
	
	/**
	 * List<product> 객체를 화면에 출력
	 * @param list
	 */
	private void displayList(List<Product> list) {		
		//list가 비어있지 않을 때
		if(list != null && !list.isEmpty()) {
			System.out.println("=================================================================================================");
			for(int i = 0 ; i< list.size() ;i++)
				System.out.println(">>> " + list.get(i));
			System.out.println("=================================================================================================");
		}
		else
			System.out.println("존재하지 않음");
	}
	
	/**
	 * List<ProductIO> 객체를 화면에 출력
	 * @param list
	 */
	private void displayList_IO(List<ProductIO> list) {		
		//list가 비어있지 않을 때
		if(list != null && !list.isEmpty()) {
			System.out.println("=================================================================================================");
			for(int i = 0 ; i< list.size() ;i++)
				System.out.println(">>> " + list.get(i));
			System.out.println("=================================================================================================");
		}
		else
			System.out.println("존재하지 않음");
	}
	
	/**
	 * Product 객체를 화면에 띄워줌
	 * @param product
	 */
	private void displayProduct(Product product) {
		// TODO Auto-generated method stub
		if(product != null) {
			System.out.println("=================================================================================================");
			System.out.println(">>> " + product);
			System.out.println("=================================================================================================");
		}
		else
			System.out.println("조회되지 않음");
	}
	

	private void displayMsg(String msg) {
		// TODO Auto-generated method stub
		System.out.println(">>> " + msg);
	}

	/**
	 * ProductExecption에 던저진 이슈를 출력
	 * @param e
	 */
	public void dispalyError(String errorMsg) {
		// TODO Auto-generated method stub
		System.err.println(errorMsg+" : 관리자에게 문의하세요");
	}
	
	/**
	 * 정보변경 후 변경된 정보 출력
	 * @param result, memberId
	 */
	private void displayCheck(int result,String productId) {
		String msg = result >0 ? "정보 변경 성공" : "정보 변경 실패";
		displayMsg(msg);
		Product product = controller.selectId(productId);
		displayProduct(product);
	}
	
	
	
	
	
	

	private String inputProductName() {
		System.out.print("상품명를 입력하세요 : ");
		return sc.nextLine();
	}

	private String inputProductID() {
		System.out.print("상품 ID를 입력하세요 : ");
		return sc.nextLine();
	}

	private Product inputProduct() {
		Product product = new Product();
		
		System.out.print("상품 ID를 입력하세요 : ");
		product.setProduct_id(sc.nextLine());
		
		System.out.print("상품 이름를 입력하세요 : ");
		product.setP_name(sc.nextLine());
		
		System.out.print("상품 가격를 입력하세요 : ");
		product.setPrice(sc.nextInt());
		sc.nextLine();
		System.out.print("상품 종류를 입력하세요 : ");
		product.setDescription(sc.nextLine());
		
		System.out.print("상품 재고를 입력하세요 : ");
		product.setStock(sc.nextInt());
		sc.nextLine();
		return product;
	}
	
	private ProductIO inputProductIO(int num) {
		ProductIO product = new ProductIO();
		
		System.out.print("상품 ID를 입력하세요 : ");
		product.setProduct_id(sc.nextLine());
		
		System.out.print("수량을 입력하세요 : ");
		product.setAmount(sc.nextInt());
		sc.nextLine();
		
		if(num == 2) product.setStatus("I");
		else {
			//재고확인
			stockCheck(product.getProduct_id(),product.getAmount());
			product.setStatus("O");	
		}	
		
		return product;
	}
	
	/**
	 * product_stock의 stock과 출고될 수량을 비교
	 * @param amount
	 */
	private void stockCheck(String productId, int amount) {
		// TODO Auto-generated method stub
		Product product = controller.selectId(productId);
		int stock = product.getStock();
		
		//출고될 수량이 기존 수량보다 적으면 에러
		if(stock < amount) {
			System.err.println("수량 부족. 프로그램 중지");
			System.exit(0);;
		}
	}

}
