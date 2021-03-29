<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page import="member.model.vo.Member"%>
<%@ page import=" java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%
	String memberId = member.getMemberId();
	String password = member.getPassword();
	String memberName = member.getMemberName();
	String gender = member.getGender() !=null ? member.getGender() : "";
	Date birthday = member.getBirthday();
	String email = member.getEmail()  !=null ? member.getEmail() : "";
	String phone = member.getPhone()  !=null ? member.getPhone() : "";
	String address = member.getAddress()  !=null ? member.getAddress() : "";
	String hobby = member.getHobby();
	
	List<String> hobbyList = null;
	if(hobby != null){
		String[] arr =hobby.split(",");
		hobbyList = Arrays.asList(arr);
	}
%>
<section id=enroll-container>
	<h2>회원 정보</h2>
	<form id="memberUpdateFrm" method="post">
		<table>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="memberId" id="memberId_" value="<%= memberId %>" readonly>
				</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td>
					<input type="password" name="password" id="password_" value="<%= password %>" required>
				</td>
			</tr>
			<tr>
				<th>패스워드확인</th>
				<td>	
					<input type="password" id="password2" value="<%= password %>" required><br>
				</td>
			</tr> 
			<tr>
				<th>이름</th>
				<td>	
				<input type="text"  name="memberName" id="memberName" value="<%= memberName%>"  required><br>
				</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td>	
				<input type="date" name="birthday" id="birthday" value="<%= birthday %>"><br>
				</td>
			</tr> 
			<tr>
				<th>이메일</th>
				<td>	
					<input type="email" placeholder="abc@xyz.com" name="email" id="email" value="<%= email %>"><br>
				</td>
			</tr>
			<tr>
				<th>휴대폰</th>
				<td>	
					<input type="tel" placeholder="(-없이)01012345678" name="phone" id="phone" maxlength="11" value="<%= phone %>" required><br>
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>	
					<input type="text" placeholder="" name="address" id="address" value="<%= address %>"><br>
				</td>
			</tr>
			<tr>
				<th>성별 </th>
				<td>
					
		       		 <input type="radio" name="gender" id="gender0" value="M" <%= "M".equals(gender) ? "checked" : "" %>>
					 <label for="gender0">남</label>
						 <input type="radio" name="gender" id="gender1" value="F"<%= "F".equals(gender) ? "checked" : "" %>>
					 <label for="gender1">여</label>

				</td>
			</tr>
			<tr>
				<th>취미 </th>
				<td>
					<input type="checkbox" name="hobby" id="hobby0" value="운동" 
						<%= hobbyChecked(hobbyList, "운동")%>>
					<label for="hobby0">운동</label>
					<input type="checkbox" name="hobby" id="hobby1" value="등산" 
						<%= hobbyChecked(hobbyList, "등산")%>>
					<label for="hobby1">등산</label>
					<input type="checkbox" name="hobby" id="hobby2" value="독서" 
						<%= hobbyChecked(hobbyList, "독서")%>>
					<label for="hobby2">독서</label><br />
					<input type="checkbox" name="hobby" id="hobby3" value="게임" 
						<%= hobbyChecked(hobbyList, "게임")%>>
					<label for="hobby3">게임</label>
					<input type="checkbox" name="hobby" id="hobby4" value="여행" 
						<%= hobbyChecked(hobbyList, "여행")%>>
					<label for="hobby4">여행</label><br />


				</td>
			</tr>
		</table>
        <input type="button" onclick="updateMember();" value="정보수정"/>
        <input type="button" onclick="deleteMember();" value="탈퇴"/>
	</form>
</section>
<script type="text/javascript">
<%-- jsp로 함수선언을 하면 변환된 memberView_jsp.java 파일에도 함수 선언이 된다. --%>
<%!
	public String hobbyChecked(List<String> hobbyList, String hobby){
		return hobbyList != null && hobbyList.contains("등산") ? "checked" : "";
	}
%>
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
