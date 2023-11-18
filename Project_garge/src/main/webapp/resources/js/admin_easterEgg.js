function easterEgg()  {
  
  	console.log("확인용");
  	
  	var count = 1;
  	
  	$("#easterEgg").bind("click", function(){
		
		count++;
		if(count == 5){
//			alert("카운트 : " + count);
			location.href="AdminMain";
		}
	
	});
 
}
