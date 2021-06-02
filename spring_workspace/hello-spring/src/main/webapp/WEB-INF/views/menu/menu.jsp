<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="Menu REST-API" name="menu"/>
</jsp:include>
<style>
div.menu-test{width:50%; margin:0 auto; text-align:center;}
div.result{width:70%; margin:0 auto;}
</style>
<script type="text/javascript">
const menuRestOrigin = "http://localhost:10000";
const menuRestContextPath = "/springboot";
const url = menuRestOrigin + menuRestContextPath;
</script>
<!--
SOP : Same Origin Policy(동일 근원 정책)
	=> Origin : protocol + host + port (ex. http://localhost:10000)
	- 비동기 요청시 현재 페이지 Origin과 동일 Origin으로만 요청할 수 있게 제한함
	
CORS : Policy Cross Origin Resource Sharing 
	- 타자원을 공유함
	- 조건 : 응답 header에 Acess-Control-Allow-Origin : 나의 Origin이 설정되어 있을것!	
	
Access to XMLHttpRequest at 'http://localhost:10000/springboot/menus' 
from origin 'http://localhost:9090' 
has been blocked by CORS policy: No 'Access-Control-Allow-Origin' header is present on the requested resource.


 Acess-Control-Allow-Origin이 설정이 안되었을때
 	=> 우리 서버를 프록시로 이용하여 요청 처리
 
 -->



       	<!-- 1.GET /menus-->
        <div class="menu-test">
            <h4>전체메뉴조회(GET)</h4>
            <input type="button" class="btn btn-block btn-outline-success btn-send" id="btn-menus" value="전송" />
        </div>
        <div class="result" id="menus-result"></div>
        <script>
			$("#btn-menus").click(() => {
				$.ajax({
					//url : `\${url}/menus`,	// 타 rest server로 직접 요청
					url : "${pageContext.request.contextPath}/menu/selectMenuList.do",
					method: "GET",
					success(data){
						console.log(data);
						displayResultTable("menus-result", data);
					},
					error : console.log
				})
			});
        </script>
        
        <!-- 2. GET /menus/kr   /menus/ch    /menus/jp -->
		<div id="menu-container" class="text-center">
			<div class="menu-test">
				<h4>추천메뉴(GET)</h4>
				<form id="menuRecommendationFrm">
					<div class="form-check form-check-inline">
						<input type="radio" class="form-check-input" name="type" id="get-no-type" value="all" checked>
						<label for="get-no-type" class="form-check-label">모두</label>&nbsp;
						<input type="radio" class="form-check-input" name="type" id="get-kr" value="kr">
						<label for="get-kr" class="form-check-label">한식</label>&nbsp;
						<input type="radio" class="form-check-input" name="type" id="get-ch" value="ch">
						<label for="get-ch" class="form-check-label">중식</label>&nbsp;
						<input type="radio" class="form-check-input" name="type" id="get-jp" value="jp">
						<label for="get-jp" class="form-check-label">일식</label>&nbsp;
					</div>
					<br />
					<div class="form-check form-check-inline">
						<input type="radio" class="form-check-input" name="taste" id="get-no-taste" value="all" checked>
						<label for="get-no-taste" class="form-check-label">모두</label>&nbsp;
						<input type="radio" class="form-check-input" name="taste" id="get-hot" value="hot">
						<label for="get-hot" class="form-check-label">매운맛</label>&nbsp;
						<input type="radio" class="form-check-input" name="taste" id="get-mild" value="mild">
						<label for="get-mild" class="form-check-label">순한맛</label>
					</div>
					<br />
					<input type="submit" class="btn btn-block btn-outline-success btn-send" value="전송" >
				</form>
			</div>
			<div class="result" id="menuRecommendation-result"></div>
			<script >
				$("#menuRecommendationFrm").submit( e =>{
					e.preventDefault(); 		// form 제출 방지

					//현재 폼
					const $frm = $(e.target);
					const type = $frm.find("[name= type]:checked").val();
					const taste = $frm.find("[name=taste]:checked").val();
					console.log(type);

					//비동기
					$.ajax({
						url : `\${url}/menus/\${type}/\${taste}`,			//\${type} : strint template 변수
						success(data){
							console.log(data);
							displayResultTable("menuRecommendation-result", data);
						},
						error : console.log
					});
				});
			</script>
		</div>
		
	    <!-- 2.POST /menu -->
		<div class="menu-test">
			<h4>메뉴 등록하기(POST)</h4>
			<form id="menuEnrollFrm">
				<input type="text" name="restaurant" placeholder="음식점" class="form-control" />				<br />
				<input type="text" name="name" placeholder="메뉴" class="form-control" />						<br />
				<input type="number" name="price" placeholder="가격" class="form-control" />					<br />
				<div class="form-check form-check-inline">
					<input type="radio" class="form-check-input" name="type" id="post-kr" value="kr" checked>
					<label for="post-kr" class="form-check-label">한식</label>&nbsp;
					<input type="radio" class="form-check-input" name="type" id="post-ch" value="ch">
					<label for="post-ch" class="form-check-label">중식</label>&nbsp;
					<input type="radio" class="form-check-input" name="type" id="post-jp" value="jp">
					<label for="post-jp" class="form-check-label">일식</label>&nbsp;
				</div>
				<br />
				<div class="form-check form-check-inline">
					<input type="radio" class="form-check-input" name="taste" id="post-hot" value="hot" checked>
					<label for="post-hot" class="form-check-label">매운맛</label>&nbsp;
					<input type="radio" class="form-check-input" name="taste" id="post-mild" value="mild">
					<label for="post-mild" class="form-check-label">순한맛</label>
				</div>
				<br />
				<input type="submit" class="btn btn-block btn-outline-success btn-send" value="등록" >
			</form>
		</div>
		<script>
		/**
		POST /menu
		*/
		$("#menuEnrollFrm").submit(e => {
			e.preventDefault(); 		// form 제출 방지
			
			const $frm = $(e.target);
			const restaurant = $frm.find("[name= restaurant]").val();
			const name = $frm.find("[name= name]").val();
			const price = $frm.find("[name= price]").val();
			const type = $frm.find("[name= type]:checked").val();
			const taste = $frm.find("[name=taste]:checked").val();
			const menu = {
					restaurant,
					name,
					price,
					type,
					taste
			};
			$.ajax({
				url : `\${url}/menu`,
				method : "POST",
				contentType: "application/json; charset=UTF-8",
				data :JSON.stringify(menu),			//json 문자열로 바뀌어 text로 날라감
				//data : "restaurant="+$restaurant+"&name"+$name ...
				success(data){
					console.log(data);
					const {msg} = data;
					alert(msg);
				},
				error : console.log	,
				complete(){
					$frm[0].reset();
				}
			});
		});
		</script>
		<br />
		<br />
		<br />
		<!-- 
			#3.PUT /menu/123 
		
			1. get 방식의 메뉴번호로 메뉴 조회
			2. put 방식의 메뉴 수정
		-->
		<div class="menu-test">
			<h4>메뉴 수정하기(PUT)</h4>
			<p>메뉴번호를 사용해 해당메뉴정보를 수정함.</p>
			<form id="menuSearchFrm">
				<input type="text" name="id" placeholder="메뉴번호" class="form-control" /><br />
				<input type="submit" class="btn btn-block btn-outline-primary btn-send" value="검색" >
			</form>
			<hr />
			<form id="menuUpdateFrm">
				<input type="text" name="restaurant" placeholder="음식점" class="form-control" />
				<br />
				<input type="text" name="name" placeholder="메뉴" class="form-control" />
				<br />
				<input type="number" name="price" placeholder="가격" step="1000" class="form-control" />
				<br />
				<div class="form-check form-check-inline">
					<input type="radio" class="form-check-input" name="type" id="put-kr" value="kr">
					<label for="put-kr" class="form-check-label">한식</label>&nbsp;
					<input type="radio" class="form-check-input" name="type" id="put-ch" value="ch">
					<label for="put-ch" class="form-check-label">중식</label>&nbsp;
					<input type="radio" class="form-check-input" name="type" id="put-jp" value="jp">
					<label for="put-jp" class="form-check-label">일식</label>&nbsp;
				</div>
				<br />
				<div class="form-check form-check-inline">
					<input type="radio" class="form-check-input" name="taste" id="put-hot" value="hot">
					<label for="put-hot" class="form-check-label">매운맛</label>&nbsp;
					<input type="radio" class="form-check-input" name="taste" id="put-mild" value="mild">
					<label for="put-mild" class="form-check-label">순한맛</label>
				</div>
				<br />
				<input type="submit" class="btn btn-block btn-outline-success btn-send" value="수정" >
			</form>
		</div>
		<script>

			//메뉴 찾기
			$("#menuSearchFrm").submit( e=> {
				e.preventDefault(); 		// form 제출 방지
				
				const $frm = $(e.target);
				const id = $frm.find("[name= id]").val();

				const $updateFrm = $("#menuUpdateFrm");
				const restaurant  = $updateFrm.find("[name=restaurant]");
				const name  = $updateFrm.find("[name=name]");
				const price  = $updateFrm.find("[name=price]");
				const $type  = $updateFrm.find("[name=type]");
				const $taste  = $updateFrm.find("[name=taste]");

				$.ajax({ 
					url: `\${url}/menu/\${id}`,
					method : "GET",
					success(data){
						console.log(data);
						restaurant.val(data.restaurant);
						name.val(data.name);
						price.val(data.price);
					    $updateFrm.find(`[name=type][value=\${data.type}]`).prop("checked", true);
					    $updateFrm.find(`[name=taste][value=\${data.taste}]`).prop("checked", true);
					    /* 
						$type.each(function(i, item){
							if(item.value == data.type){	
								$(item).attr("checked",true);
							}
						});
						
						$taste.each(function(i, item){
							if(item.value == data.taste){	
								$(item).prop("checked",true);
							}
						});
					     */
					},
					error(xhr, statusText, err){
						console.log(xhr, statusText, err);

						const {status} = xhr;
						status == 404 && alert("해당 메뉴가 존재하지 않습니다.");
						$("[name=id]", e.target).select();
					}
				});
			});


			$("#menuUpdateFrm").submit( e=> {
				e.preventDefault(); 		// form 제출 방지
				
				const $updateFrm = $(e.target);
				const restaurant  = $updateFrm.find("[name=restaurant]").val();
				const name  = $updateFrm.find("[name=name]").val();
				const price  = $updateFrm.find("[name=price]").val();
				const type  = $updateFrm.find("[name=type]:checked").val();
				const taste  = $updateFrm.find("[name=taste]:checked").val();
				const id = $("#menuSearchFrm").find("[name=id]").val();
				console.log(id);
				
				const menu = {	id,	restaurant,	name,price,	type,taste};

				
				$.ajax({ 
					url :`\${url}/menu?`,
					method : "PUT",
					data : JSON.stringify(menu),
					contentType: "application/json; charset=UTF-8",
					success(data){
						console.log(data);
						const {msg} = data;
						alert(msg);
					},
					error(xhr, statusText, err){
						console.log(xhr, statusText, err);

						const {status} = xhr;
						status == 404 && alert("메뉴 수정 오류");
						$("[name=id]", e.target).select();
					},
					complete(){
						$updateFrm[0].reset();
					}
				});
			});
			
		</script>
		
		<!-- 4. 삭제 DELETE /menu/123 -->    
		<div class="menu-test">
	    	<h4>메뉴 삭제하기(DELETE)</h4>
	    	<p>메뉴번호를 사용해 해당메뉴정보를 삭제함.</p>
	    	<form id="menuDeleteFrm">
	    		<input type="text" name="id" placeholder="메뉴번호" class="form-control" /><br />
	    		<input type="submit" class="btn btn-block btn-outline-danger btn-send" value="삭제" >
	    	</form>
	    </div>
	    <script>
		$("#menuDeleteFrm").submit(e => {
			e.preventDefault();

			const id = $("[name=id]", e.target).val();
			if(!id) return;

			$.ajax({
				url : `\${url}/menu/\${id}`,
				method : "DELETE",
				success(data){
					console.log(data);
					const {msg} = data;
					alert(msg);
				},
				error(xhr, statusText, err){
					console.log(xhr, statusText, err);

					const {status} = xhr;
					switch(status){
					case 404 : alert("해당 메뉴가 존재하지 않습니다."); break;
					default : alert("메뉴 삭제 실패");
					}
					$("[name=id]", e.target).select();
				},
				complete(){
					$(e.target)[0].reset();
				}
			});	
		});

	    </script>
		<script>
		function displayResultTable(id, data){
			const $selector = $("#"+id);
			const table_class = $("."+id);
			if(table_class.length){
				table_class.remove();
			}
			let html = "<table class='table " + id+ "'>"
			html += "<th>번호</th> <th>음식점</th> <th>메뉴</th> <th>가격</th> <th>타입</th> <th>맛</th>";
		
			//마이바이티스 session.selectList는 데이터가 없는경우 빈 list를 리턴함
			if(data.length > 0){
				$(data).each((index, menu) =>{
					const {id, restaurant, name, price, type, taste} = menu;
					html += `<tr> 
								<td>\${id}</td>
								<td>\${restaurant}</td>
								<td>\${name}</td>
								<td>\${price}</td>
								<td>\${type}</td>
								<td><span class="badge badge-\${taste == 'hot' ? 'danger' : 'warning'}">\${taste}</span></td>
							</tr>`;
				});
				html += "</table>";
		
				$selector.append(html);
			}else{
		
			}
		
		}
		</script>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
