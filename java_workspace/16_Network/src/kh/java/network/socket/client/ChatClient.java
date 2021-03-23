package kh.java.network.socket.client;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;

public class ChatClient {
	
	public static final String SERVER_IP ="localhost";
	public static final int SERVER_PORT =7777;
	
	public static void main(String[] arg) {
		new ChatClient().init();
	}
	
	public void init() {
		
		try {
			//1.소켓 생성, 연결요청
			Socket so = new Socket(SERVER_IP,SERVER_PORT);
			
			//2. 소켓용 입출력 스트림 준비
			BufferedReader br = new BufferedReader(new InputStreamReader(so.getInputStream()));
			PrintWriter pw = new PrintWriter(so.getOutputStream());
			
			//3. 서버 통신
//			System.out.println("서버 : "+ br.readLine());
			
			//4. 채팅
			String data ="";
			Scanner sc = new Scanner(System.in);
			while((data = br.readLine()) != null) {
				System.out.println("서버 : "+ data);
				System.out.print("클라이언트 : ");
				String msg = sc.nextLine();
				pw.println(msg);
				pw.flush();
				if("exit".equals(msg)) {
					System.out.println("채팅 프로그램 종료");
					break;
				}
			}
			
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
