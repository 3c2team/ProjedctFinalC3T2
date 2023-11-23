<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script type="text/javascript">
	//카카오페이 연동
	window.onload = function requestPay() {
	
		IMP.init('imp37164056'); // 객체 초기화. 가맹점 식별코드 전달
	
		IMP.request_pay({
	    	pg: "kakaopay.TC0ONETIME",
	    	pay_method: "card",
	    	merchant_uid: "ORD" + getDateTimeString(),   // 주문번호
	    	name: "이예림", //"${paymentProduct}",
	    	amount: 33300, //${resultPrice },                         // 숫자 타입
	    	buyer_email: "lyl3697@naver.com", //"${Member.member_e_mail}",
	    	buyer_name: "이예림", //"${Member.member_name}",
	    	buyer_tel: "010-3344-5566", //"${Member.member_phone_num}",
	    	buyer_addr: "fkfkfkfkfkfkfk", //"${Member.member_address}",
	    	buyer_postcode: "45323"//"01181"
	    }, function (rsp) { // callback
	     	if(rsp.success) { // 결제 성공 시
	 			console.log("rsp.imp_uid : " + rsp.imp_uid);
	 			console.log("rsp.merchant_uid : " + rsp.merchant_uid);
	 			$.ajax({
					type:"POST",
					url:"PaymentResult",
					data:{
						imp_uid: rsp.imp_uid,
	                    merchant_uid: rsp.merchant_uid,
	                    sId : "${sessionScope.sId}"
						},
					success:function(result){
						console.log("데이터 전송 성공");
						alert("결제가 완료 됐습니다.");
						location.href="PaymentComplete";
					},
					error:function(){
						console.log("작업 실패");
						alert("오류가 발생 했습니다.");
						location.href = "${pageContext.request.contextPath}/AccPro";
					}
				});
	     	}else{
	     		alert("결제에 실패하였습니다.");
	     		location.href = "${pageContext.request.contextPath}/AccPro";
	     	}
	    });
	}

// 현재 날짜 정보를 "yyyyMMdd" 형식의 문자열로 리턴하는 함수 정의
function getDateTimeString() {
	let now = new Date();
	// getFullYear() : 연도, getMonth() : 월(+1 필요), getDate() : 일 
	// => 문자열 결합(20231101)
	// => 단, 월과 일의 경우 1자리 일 때 앞자리 0 추가 필요
	let dateTime = "" + now.getFullYear() 
					+ (now.getMonth() + 1 < 10 ? "0" + (now.getMonth() + 1) : now.getMonth() + 1) 
					+ (now.getDate() < 10 ?  "0" + now.getDate() : now.getDate())
					+ (now.getHours() < 10 ?  "0" + now.getHours() : now.getHours())
					+ (now.getMinutes() < 10 ?  "0" + now.getMinutes() : now.getMinutes())
					+ (now.getSeconds() < 10 ?  "0" + now.getSeconds() : now.getSeconds())
					;
	console.log(dateTime); // 20231101172821
	return dateTime;
}
</script>
</head>
<body>
</body>
</html>