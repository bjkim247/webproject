<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="../javascript/js/js4.js"></script>
  <script type="text/javascript">
    // 유효성 검사 메서드
    function Validation() {
    	//변수에 저장
        var uid = document.getElementById("uid")
        var pw = document.getElementById("pw")
        var cpw = document.getElementById("cpw")
        var mail = document.getElementById("mail")
        var name = document.getElementById("uname")
        var year = document.getElementById("year")
        var month = document.getElementById("month")
        var day = document.getElementById("day")
        var hobby = document.getElementsByName("hobby")
        var me = document.getElementById("me")

        // 정규식
        // id, pw
        var regIdPw = /^[a-zA-Z0-9]{4,12}$/;
        // 이름
        var regName = /^[가-힣a-zA-Z]{2,15}$/;
        // 이메일
        var regMail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
        // 년도
        var regYear = /^[1-2]{1}[0-9]{0,4}$/;

        //아이디 확인
        if(uid.value == ""){
            alert("아이디를 입력하세요.")
            uid.focus();
            return false;
        }
        //아이디 영어 대소문자 확인
        else if(!regIdPw.test(uid.value)){
            alert("4~12자 영문 대소문자, 숫자만 입력하세요.")
            uid.focus();
            return false;
        }

        //비밀번호 확인
        if(pw.value == ""){
            alert("비밀번호를 입력하세요.")
            pw.focus();
            return false;
        }
        //비밀번호 영어 대소문자 확인
        else if(!regIdPw.test(pw.value)){
            alert("4~12자 영문 대소문자, 숫자만 입력하세요.")
            pw.focus();
            return false;
        }
        //비밀번호와 아이디 비교
        else if(pw.value == uid.value){
            alert("아이디와 동일한 비밀번호를 사용할 수 없습니다.")
            pw.focus();
            return false;
        }


        //비밀번호 확인
        if(cpw.value !== pw.value){
            alert("비밀번호와 동일하지 않습니다.")
            cpw.focus();
            return false;
        }

        //메일주소 확인
        if(mail.value.length == 0){
            alert("메일주소를 입력하세요.")
            mail.focus();
            return false;
        }

        else if(!regMail.test(mail.value)){
            alert("잘못된 이메일 형식입니다.")
            mail.focus();
            return false;
        }

        //이름 확인 = 한글과 영어만 가능하도록
        if(uname.value == ""){
            alert("이름을 입력하세요.")
            uname.focus();
            return false;
        }

        else if(!regName.test(uname.value)){
            alert("최소 2글자 이상, 한글과 영어만 입력하세요.")
            uname.focus();
            return false;
        }

        //생일 확인
        if(year.value == ""){
            alert("년도를 입력하세요.")
            year.focus();
            return false;
        }

        else if(!regYear.test(year.value)){
            alert("년도를 정확하게 입력해주세요.")
            year.focus();
            return false;
        }

        else if(!(year.value >=1900 && year.value <= 2050)){
            alert("년도를 정확하게 입력해주세요.")
            year.focus();
            return false;
        }
    }

    //관심분야 체크 확인
    function checkedHobby(arr){
    	 alert("관심분야를 체크하세요.")
         hobby.focus();
         return false;
     }

     //자기소개 확인
     if(me.value.length <= 10){
         alert("자기소개는 최소 10글자를 입력해주세요.")
         me.focus();
         return false;
     }

     // 유효성 문제 없을 시 폼에 submit
     document.joinForm.submit();
    }
  </script>
</head>
<body>
  <form name="joinForm" action="yourActionServlet" method="post">
    <table text-align="center" align="center" border="1" width="800" height="600" cellspacing="0">
      <tr>
                <td bgcolor="#48dbfb" align="center" colspan="2" height="50"> <b>회원 기본 정보</b> </td>
            </tr>
            <tr>
                <td bgcolor="#c8d6e5" align="center" width="150">아이디:</td>
                <td bgcolor="white"> <input type="text" size="20" name="uid" id="uid" minlength="4" maxlength="12"> 4~12자의 영문 대소문자의 숫자로만 입력 </td>
            </tr>
            <tr>
                <td bgcolor="#c8d6e5" align="center">비밀번호:</td>
                <td bgcolor="white"> <input type="password" size="20" name="pw" id="pw" minlength="4" maxlength="12"> 4~12자의 영문 대소문자의 숫자로만 입력</td>
            </tr>
            <tr>
                <td bgcolor="#c8d6e5" align="center">비밀번호확인:</td>
                <td bgcolor="white"><input type="password" size="20" name="cpw" id="cpw"></td>
            </tr>
            <tr>
                <td bgcolor="#c8d6e5" align="center">메일주소:</td>
                <td bgcolor="white"><input type="email" size="30" name="mail" id="mail"> 예) id@domain.com</td>
            </tr>
            <tr>
                <td bgcolor="#c8d6e5" align="center">이름:</td>
                <td bgcolor="white"><input type="text" size="30" name="uname" id="uname"></td>
            </tr>
            <tr>
                <td bgcolor="#48dbfb" align="center" colspan="2" height="50"><B>개인 신상 정보</B></td>
            </tr>
            <tr>
              <td bgcolor="#c8d6e5" align="center">주소:</td>
            <td><input type="text"id="sample6_postcode"placeholder="우편번호"/>
              <input type="button" onclick="sample6_execDaumPostcode()"   value="우편번호 찾기"><br />
              <input type="text" id="sample6_address"   placeholder="주소"><br />
              <input type="text" id="sample6_detailAddress"  placeholder="상세주소"> 
              <input type="text" id="sample6_extraAddress" placeholder="참고항목">
            </td>
            </tr>
            <tr>
              <td>
            <tr>
                <td bgcolor="#c8d6e5" align="center">주민등록번호:</td>
                <td bgcolor="white"><input maxlength="13" type="text" size="30" name="num">예) 1234561234567</td>
            </tr>
            <tr>
                <td bgcolor="#c8d6e5" align="center">생일:</td>
                <td bgcolor="white">
                    <input type="text" size="8" name="year" id="year">년
                    <select name="month" id="month">
                        <option value = "1">1</option>
                        <option value = "2">2</option>
                        <option value = "3">3</option>
                        <option value = "4">4</option>
                        <option value = "5">5</option>
                        <option value = "6">6</option>
                        <option value = "7">7</option>
                        <option value = "8">8</option>
                        <option value = "9">9</option>
                        <option value = "10">10</option>
                        <option value = "11">11</option>
                        <option value = "12">12</option>
                    </select>월
                    <select name="day" id="day">
                        <option value = "1">1</option>
                        <option value = "2">2</option>
                        <option value = "3">3</option>
                        <option value = "4">4</option>
                        <option value = "5">5</option>
                        <option value = "6">6</option>
                        <option value = "7">7</option>
                        <option value = "8">8</option>
                        <option value = "9">9</option>
                        <option value = "10">10</option>
                        <option value = "11">11</option>
                        <option value = "12">12</option>
                        <option value = "13">13</option>
                        <option value = "14">14</option>
                        <option value = "15">15</option>
                        <option value = "16">16</option>
                        <option value = "17">17</option>
                        <option value = "18">18</option>
                        <option value = "19">19</option>
                        <option value = "20">20</option>
                        <option value = "21">21</option>
                        <option value = "22">22</option>
                        <option value = "23">23</option>
                        <option value = "24">24</option>
                        <option value = "25">25</option>
                        <option value = "26">26</option>
                        <option value = "27">27</option>
                        <option value = "28">28</option>
                        <option value = "29">29</option>
                        <option value = "30">30</option>
                        <option value = "31">31</option>
                    </select>일
                </td>
            </tr>
            <tr>
                <td bgcolor="#c8d6e5" align="center">관심분야:</td>
                <td bgcolor="white">
                    <input type="checkbox" name="hobby" value="computer">컴퓨터&nbsp;&nbsp;
                    <input type="checkbox" name="hobby" value="net">인터넷&nbsp;&nbsp;
                    <input type="checkbox" name="hobby" value="trable">여행&nbsp;&nbsp;
                    <input type="checkbox" name="hobby" value="movie">영화감상&nbsp;&nbsp;
                    <input type="checkbox" name="hobby" value="music">음악감상&nbsp;&nbsp;
                </td>
            </tr>
            <tr height="100">
                <td bgcolor="#c8d6e5" align="center" rowspan="2">자기소개:</td>
                <td bgcolor="white">
                    <textarea rows="10" cols="75" name="me" id="me"> </textarea>
                </td>
            </tr>
    </table>
    <br>
    <div align="center">
      <button type="button" width="30" onclick="Validation()">회원 가입</button>
      <input type="reset" onclick="alert('초기화 했습니다.')" value="다시 입력">
    </div>
  </form>
</body>
</html>
