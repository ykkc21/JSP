<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style type="text/css">
*{margin: 0; padding: 0; list-style: none; text-decoration: none; box-sizing: border-box;}

.main { width: 100%; height: 100vh; background-color: #53e3ab; padding: 50px; position: relative; overflow: hidden; }
.main > form { width: 500px; height: 420px; margin: 0 auto; }
.main > form  > h1 { text-align: center; }
.main > form  > input { width: 320px; height: 50px; margin-left: 95px; margin-top: 35px; }
.main > ul > { width: 100%; height: 100%; }
.main > ul > li { display: inline-block; }
.main > ul > li:nth-of-type(1) > span { display: block; width: 100px; height: 100px; background-color: rgba(255, 255, 255, 0.5); position: absolute; bottom: -20%;  animation: aaa 3.5s infinite; }
 .main > ul > li:nth-of-type(2) > span { display: block; width: 100px; height: 100px; background-color: rgba(255, 255, 255, 0.5);  position: absolute; bottom: -30%; left: 10%; animation: aaa 5s infinite;}
.main > ul > li:nth-of-type(3) > span { display: block; width: 100px; height: 100px; background-color: rgba(255, 255, 255, 0.5);  position: absolute; bottom: -30%; left: 20%; animation: aaa 7s infinite;}
.main > ul > li:nth-of-type(4) > span { display: block; width: 100px; height: 100px; background-color: rgba(255, 255, 255, 0.5);  position: absolute; bottom: -30%; left: 30%; animation: aaa 11s infinite;}
.main > ul > li:nth-of-type(5) > span { display: block; width: 100px; height: 100px; background-color: rgba(255, 255, 255, 0.5);  position: absolute; bottom: -30%; left: 40%; animation: aaa 15s infinite;}
.main > ul > li:nth-of-type(6) > span { display: block; width: 100px; height: 100px; background-color: rgba(255, 255, 255, 0.5);  position: absolute; bottom: -30%; left: 50%; animation: aaa 17.5s infinite;}
.main > ul > li:nth-of-type(7) > span { display: block; width: 100px; height: 100px; background-color: rgba(255, 255, 255, 0.5);  position: absolute; bottom: -30%; left: 60%; animation: aaa 2s infinite;}
 

@keyframes aaa {
    0%{ bottom: -20%; transform: rotate(0deg); }
    100%{bottom: 100%; transform: rotate(360deg);}
}
@keyframes bbb {
    0%{ bottom: -20%; transform: rotate(0deg); }
    100%{bottom: 100%; transform: rotate(360deg);}
}
@keyframes ccc {
    0%{ bottom: -20%; transform: rotate(0deg); }
    100%{bottom: 100%; transform: rotate(360deg);}
}
@keyframes ddd {
    0%{ bottom: -20%; transform: rotate(0deg); }
    100%{bottom: 100%; transform: rotate(360deg);}
}
@keyframes eee {
    0%{ bottom: -20%; transform: rotate(0deg); }
    100%{bottom: 100%; transform: rotate(360deg);}
}
@keyframes fff {
    0%{ bottom: -20%; transform: rotate(0deg); }
    100%{bottom: 100%; transform: rotate(360deg);}
}
@keyframes ggg {
    0%{ bottom: -20%; transform: rotate(0deg); }
    100%{bottom: 100%; transform: rotate(360deg);}
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp"/>
    <div class="main">
        <form action="processLoginMember.jsp" method="post">
            <h1>Welcome</h1>
            <input type="text" name="id" placeholder="아이디">
            <input type="password" name="password"  placeholder="비밀번호">
            <input type="submit">
        </form>
        <ul>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
        </ul>
    </div>
</body>
</html>