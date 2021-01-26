package kh.java.collection.list.music.view;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import kh.java.collection.list.music.controller.MusicManager;
import kh.java.collection.list.music.model.vo.Music;

public class MusicMenu {
	
	private MusicManager manager = new MusicManager();
	
	public void mainMenu() {
		Scanner sc = new Scanner(System.in);
		String menu = "==============Music play List==============\n"
				+"1.목록보기\n"
				+"2.마지막에 음악추가\n"
				+"3.맨처음에 음악추가\n"
				+"4.곡삭제\n"
				+"5.곡변경\n"
				+"6.곡명검색\n"
				+"7.가수검색\n"
				+"8.목록정렬(곡명오름차순)\n"
				+"0.종료\n";
		
		
		while(true) {
			System.out.println(menu);
			System.out.print(">> 메뉴선택 : ");
			int num = sc.nextInt();
			switch(num) {
				case 1 : printList(manager.selectList()); break;
				case 2 : 
					manager.addList(inputMusic());
					printList(manager.selectList());
					break;
				case 3 : 
					manager.addAtZero(inputMusic());
					printList(manager.selectList());
					break;
				case 4 : 
					if(manager.removeMusic(inputTitle())) {
						System.out.println("삭제 성공");
						printList(manager.selectList());
					}
					else
						System.out.println("삭제 실패! 오류발생");
					break;
				case 5 : 
					if(manager.replaceMusic(inputMusic(),inputMusic())) {
						System.out.println("삭제 성공");
						printList(manager.selectList());
					}
					else
						System.out.println("삭제 실패! 오류발생");
					break;
					
				case 6:
					List<Music> search =manager.searchMusicByTitle(inputTitle());
					if(search == null)
						System.out.println("검색결과가 없습니다.");
					else
						System.out.println(search);
					break;
				case 7 : 
					List<Music> search2 =manager.searchMusicBySinger(inputSinger());
					if(search2 == null)
						System.out.println("검색결과가 없습니다.");
					else
						System.out.println(search2);
					break;
				case 8: 
					sortMenu();
					break;
				case 0:
					System.out.println("종료");
					System.exit(0);
					break;
				default :
					System.out.println("잘못 입력하셨습니다.");
			}
		}
				
	}
	public void sortMenu() {
		String menu= "================== 정렬 메뉴 ===================\n"
			    +"1. 가수명 오름차순"
			    +"2. 가수명 내림차순"
			    +"3. 곡명 오름차순"
			    +"4. 곡명 내림차순"
			    +"5. 메인메뉴 돌아가기"
			    +"================================================";
	}
	
	/**
	 * 리스트 출력 메소드
	 */
	public void printList(List<Music> music) {
		for(Music m : music)
			System.out.println(m);
		System.out.println();
	}
	
	/**
	 * 곡명 입력 메소드
	 * @return
	 */
	public String inputTitle() {
		Scanner sc = new Scanner(System.in);
		String title=null;
		
		System.out.println("곡명 입력 : ");
		title = sc.nextLine();
			
		return title;
	}
	
	/**
	 * 가수 입력 메소드
	 * @return
	 */
	public String inputSinger() {
		Scanner sc = new Scanner(System.in);
		String singer=null;
		
		System.out.println("가수 입력 : ");
		singer = sc.nextLine();
			
		return singer;
	}
	
	/**
	 * 음악 입력 메소드
	 * @return
	 */
	public Music inputMusic() {
		Scanner sc = new Scanner(System.in);
		String title=null; String singer=null;
		
		System.out.println("곡명 입력 : ");
		title = sc.nextLine();
		
		System.out.println("가수 입력 : ");
		singer = sc.nextLine();
		Music m = new Music(title, singer);
		return m;
	}
}
