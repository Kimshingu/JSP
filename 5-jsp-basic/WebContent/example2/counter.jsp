<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.io.*"%>

<%!int count;

	public void jspInit() {
		FileReader fr = null;
		BufferedReader br = null;

		try {
			// JSP가 기동할 때 파일로부터 카운터 값을 읽는다.
			fr = new FileReader("C:/Users/Administrator/Desktop/jsp/5-jsp-basic/myCounter.dat");
			br = new BufferedReader(fr);
			String initial = br.readLine();
			count = Integer.parseInt(initial);
			return;
			/* } catch (FileNotFoundException ignored) {
			} catch (IOException ignored) {
			} catch (NumberFormatException ignored) { */
		} catch (Exception ignored) {
		}

		// close 코드 보강
		// 사용하고 난 뒤에는 close를 해야한다.
		finally {
			try {
				if (br != null) {
					br.close();
				}
				if (fr != null) {
					fr.close();
				}
			} catch (Exception ignored) {

			}
		}

		//초기 파라미터에서 확인
		String initial = getInitParameter("initial");

		if (initial != null) {
			try {
				count = Integer.parseInt(initial);
				return;
			} catch (NumberFormatException ignored) {
			}
		}

		count = 0;
	}

	public void jspDestroy() { //JSP Instance가 소멸시 카운터 값을 파일에 저장
		saveState();
	}

	public void saveState() {
		try {
			FileWriter fw = new FileWriter("C:/Users/Administrator/Desktop/jsp/5-jsp-basic/myCounter.dat");
			String initial = Integer.toString(count);
			fw.write(initial, 0, initial.length());
			fw.close();
			return;
		} catch (IOException e) {
		}
	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	count++;
%>
	<h2>페이지 방문 횟수 counter : <%=count%> </h2>
<%
	//현재의 counter 값을 파일에 저장
	saveState();
	// 메소드를 선언할 수 있는 이유는 <%! 영역에 했기 때문에 멤버 필드변수 멤버메소드를 취급할 수 있다.
	// 구글 애널리틱스 
%>

</body>
</html>