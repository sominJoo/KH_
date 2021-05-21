package com.kh.spring.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
//@Getter
//@Setter
//@ToString
@Data			//==>t @Getter @Setter @RequiredArgsConstructor @ToString @EqualsAndHashCode. 대체 
public class Member {
	@NonNull
	private String id;
	
	private String password;
	private String name;
	private String gender;
	private Date birthday;
	private String email;
	private String phone;
	private String address;
	private String[] hobby;
	private Date enrollDate;
	private boolean enabled;	//회원 활성화 여부 true(1) / false(0)
}
