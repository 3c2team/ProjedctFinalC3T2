<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	//��û �۾� ����/���� �� 
	// ���޹��� �����޼���(msg)�� ����ϰ�, ������ ������(targetURL)�� �̵� ó��
	alert("${msg}");
	if("${isClose}" == "true") { // ����! true �������� ���� �� ���ڿ��� �����ϱ⸸ �ϸ� ������ true
		window.close();
		location.href = "${targetURL}";
	} else {
		location.href = "${targetURL}";
	}
</script>
</body>
</html>