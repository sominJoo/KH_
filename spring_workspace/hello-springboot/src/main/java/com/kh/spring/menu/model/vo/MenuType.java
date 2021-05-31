package com.kh.spring.menu.model.vo;

import com.fasterxml.jackson.annotation.JsonValue;

/**
 * 암묵적으로 java.lang.Enum을 상속
 */
public enum MenuType {
	KR("kr"), CH("ch"), JP("jp"); //kr, ch, jp
	
	private String value;
	
	/**
	 * enum 생성자의 접근 제한자는 private
	 * 외부에서 접근/생성 불가
	 * 
	 */
	MenuType(String value){
		this.value = value;
	}
	
	//json일때만 사용
	@JsonValue
	public String getValue() {
		return this.value;
	}
	
	public static MenuType menuTypeValueOf(String value) {
		switch(value) {
		case "kr" : return KR;
		case "ch" : return CH;
		case "jp" : return JP;
		default : 
			throw new AssertionError("unknown MenuType : "+ value);
		}
	}
	
}
