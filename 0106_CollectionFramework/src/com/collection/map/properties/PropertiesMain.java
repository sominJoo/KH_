package com.collection.map.properties;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.util.Properties;

public class PropertiesMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PropertiesMain p = new PropertiesMain();
		p.run();
	}
	
	
	public void run() {
		Properties prop = new Properties();
		try {
			FileReader resource = new FileReader("C:\\Users\\ddomin\\eclipse-workspace\\Project-Root\\resources\\config.Properties");
			prop.load(resource);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		System.out.println(prop);
	}

}
