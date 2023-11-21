$("#open").click(function() {
	$("#modal-box").toggleClass("active");
});
$("#close").click(function() {
	$("#modal-box").toggleClass("active");
});

$(function() {
	// 1. 이름(받으시는 분) 입력창 체크
	$("#member_name").blur(function(){
		let name = $("#member_name").val();
		let regex = /^[가-힣]+$/;
		
		if(name == "") {
			$("#checkNameResult").html("이름을 입력해주세요.");
			$("#checkNameResult").css("color", "red");
			return;
		}
		
		if(!regex.exec(name)) {
			$("#checkNameResult").html("이름은 한글만 입력 가능합니다.");
			$("#checkNameResult").css("color", "red");
		}
	});
	
	// 2. 주소 검색 버튼
	$("#btnSearchAddress").click(function() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            let address = data.address; // 기본 주소 저장
	            if(data.buildingName != '') { // 건물명이 있을 경우
	            	address += " (" + data.buildingName + ")";
	            }
	            
	            $("#zonecode").val(data.zonecode);
	            $("#member_address1").val(address);
	            $("#member_address2").focus();
	        }
	    }).open();
	});
//	
//	// 3. 메일 입력창 체크
//	$("#member_email").blur(function(){
//		let mail = $("#member_email").val();
//		let regex = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
//		
//		if(mail == "") {
//			$("#checkMailResult").html("메일을 입력해주세요.");
//			$("#checkMailResult").css("color", "red");
//			return;
//		}
//		
//		if(!regex.exec(mail)) {
//			$("#checkMailResult").html("메일 형식에 맞춰 입력해주세요. 예) hong@naver.com");
//			$("#checkMailResult").css("color", "red");
//		}
//	});
	
	// 기존 배송지와 새로운 배송지 구분 짓기
    $('input[type="radio"][name="diliver"]').change(function(){
	   if($('input[type="radio"][name="diliver"]:checked').val() == 1){
//		   $("#member_name").val("${Member.member_name}");
// 		   $("#phone").val("${Member.member_phone_num}");
			$("#new").hide();
			$('input[type="checkbox"][name="new"]').prop('checked',false);
		   
	   } else{
	         $('input[type="text"]').val(""); // id는 그대로 유지
	         $("#new").show();
	   }
    });
    
	// 결제 방식 여러개 선택 불가능
	$('input[type="checkbox"][name="pay"]').click(function(){
		if($(this).prop('checked')){
			$('input[type="checkbox"][name="pay"]').prop('checked',false);
			$(this).prop('checked',true);
		}
		// 무통장 입금 시 입금 계좌 숨김 처리
		if ($('input[type="checkbox"][id="paypal"]').is(":checked")) {
            $("#block").show();
        } else {
            $("#block").hide();
        }
	});
});

// 전화번호 입력 시 자동 하이픈 생성
const autoHyphen = (target) => {
	target.value = target.value
	.replace(/[^0-9]/g, '')
	.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
}

function checks() {
	var getName= RegExp(/^[가-힣]+$/);
//	var getMail = RegExp(/^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/);
	
	// 이름(받으시는 분) 공백 검사
    if($("#member_name").val() == ""){
        alert("이름을 입력해주세요.");
        $("#member_name").focus();
        return false;
    }

	// 이름(받으시는 분) 유효성 검사
    if(!getName.test($("#member_name").val())){
        alert("이름은 한글만 입력 가능합니다.")
        $("#member_name").val("");
        $("#member_name").focus();
        return false;
    }
    
    // 이메일 유효성 검사
//    if(!getMail.test($("#member_email").val())){
//        alert("이메일 형식에 맞게 입력해주세요.")
//        $("#member_email").val("");
//        $("#member_email").focus();
//        return false;
//    }
    
    // 결제방식 선택 여부 검사
    if(!$("#acc-or").is(':checked') && !$("#payment").is(':checked') && !$("#paypal").is(':checked')) {
		alert("결제 방식을 선택해주세요.");
		return false;
	};
	
	// 무통장입금 시 입금 계좌 선택 여부 검사
	if($("#paypal").is(':checked')) {
		if($("#bank option:selected").val() == "noSelect") {
			alert("무통장 입금 시 입금 계좌를 선택해주세요.");
			return false;
		};
	};
	
	if($('input[type="checkbox"][name="pay"]:checked').val( ) == 1){
		$("form").attr("action", "AccPro");
	};
	if($('input[type="checkbox"][name="pay"]:checked').val( ) == 2){
		$("form").attr("action", "PaymentPro");
	};
	if($('input[type="checkbox"][name="pay"]:checked').val( ) == 3){
		$("form").attr("action", "PaypalPro");
	};
}