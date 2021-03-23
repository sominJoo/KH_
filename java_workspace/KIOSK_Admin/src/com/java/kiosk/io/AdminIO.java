package com.java.kiosk.io;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.annotation.processing.Filer;

import com.java.kiosk.model.vo.Menu;

public class AdminIO {
	
	
	public static File f = new File("MenuList.txt");

	public static void insertdMenu(List<Menu> menuList) {
		List<Menu> list = menuList;
		try(ObjectOutputStream oos = 
				new ObjectOutputStream(
						new BufferedOutputStream(
								new FileOutputStream(f,false)));){
			for(Menu m : list)
				oos.writeObject(m); //의심스럽 이것땜에 반복 출력 하는것 같다. 아닌거 같다
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static List<Menu> loadMenuList() {
		List<Menu> list = new ArrayList<>();
		
		try(ObjectInputStream ois =
				new ObjectInputStream(
						new BufferedInputStream(
								new FileInputStream(f))); ){
			while(true) {
				Menu menu = (Menu)ois.readObject();
				System.out.println(menu + "\n-----------------");
				list.add(menu);
			}
		}catch(FileNotFoundException e) {
			
		}catch (EOFException e) {
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
}




