<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<%-- 1. 1부터 n까지의 합계를 구하는 함수 --%>
	<%!
		public String getSum(int num) {
			int sum = 0;
			for (int i = 1; i <= num; i++) {
				sum += i;
			}
			return "1부터 " + num + "까지의 합은 " + sum + "입니다.";
		}
	%>
	<h1><%= getSum(50) %></h1>
	
	<%-- 2. 점수들의 평균 구하기 --%>
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double avg = (double)sum / scores.length;
	%>
	<h1>평균 점수는 <%= avg %>입니다.</h1>
	
	<%-- 3. 채점 결과 --%>
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		Iterator<String> iter = scoreList.iterator();
		int count = 0;
		while (iter.hasNext()) {
			String score = iter.next();
			if (score.equals("O")) {
				count ++;
			}
		}
	%>
	<h1>채점 결과는 <%= count * 10 %>점 입니다.</h1>
	
	<%-- 4. 나이 구하기 --%>
	<%
		String birthDay = "20010820";
		String yearStr = birthDay.substring(0, 4);
		int year = Integer.valueOf(yearStr);
		int age = 2023 - year + 1;
		// out.print(age);
	%>
	<h1><%= birthDay %>의 나이는 <%= age %>세 입니다.</h1>
	
</body>
</html>