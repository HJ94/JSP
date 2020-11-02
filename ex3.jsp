<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL(Expression Language)</title>
<style type="text/css">
	body{
		font-size : small;
	}
	table{
		border : this solid gray;
		border-collapse : collapse;
	}
	td, th{
		border : thin dotted gray;
		padding : 2px;
	}
	th{
		background-color : lightgray;
	}
	pre{
		font-size : 90%;
	}
</style>
</head>
<body>
	<p><a href  ="ex2.jsp">[����]</a></p>
	<h2>������</h2>
	<%-- '${' �տ� '\'�� ������ '${'�� EL ������ �ƴ� �Ϲ� �ؽ�Ʈ�� �����. --%>
	
	<%
		//������ �غ�
		pageContext.setAttribute("title", "EL ������!");
	%>
	<table>
		<tr><th>�з�</th><th>������</th><th>EL �ڵ� = ���� ��� </th></tr>
		<tr><td>���</td><td>+, -, *, /(div), %(mod)</td>
			<td><pre>
			\${10 + 20} = ${10 + 20}
			\${10 - 20} = ${10 - 20}
			\${10 * 20} = ${10 * 20}
			\${10 / 20} = ${10 / 20}
			\${10 % 20} = ${10 % 20}
			\${10 mod 20} = ${10 mod 20}			
			</pre>
		</td>
	</tr>
	
	<tr><td>����</td><td>==(eq), !=(ne), &lt;(lt), &gt;(gt),<br>
	&lt;=(le), &gt;=(ge)</td>
	<td><pre>
		\${10 == 11} = ${10 == 11}
		\${10 eq 11} = ${10 eq 11}
		\${10 != 11} = ${10 != 11}
		\${10 < 11} = ${10 < 11}
		\${10 lt 11} = ${10 lt 11}
		\${10 > 11} = ${10 > 11}
		\${10 gt 11} = ${10 gt 11}
		\${10 <= 11} = ${10 <= 11}
		\${10 le 11} = ${10 le 11}
		\${10 >= 11} = ${10 >= 11}
		\${10 ge 11} = ${10 ge 11}
	</pre></td>
	</tr>
	
	<tr><td>Empty �˻�</td><td>empty</td>
	<td><pre>
	\${empty title} = ${empty title}
	\${empty title2} = ${empty title2}
	</pre></td>
	</tr>
		
	</table>
	
</body>
</html>