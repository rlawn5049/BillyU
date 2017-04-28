<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style>
@media screen and (max-width: 1200px) {
  .Y_NavSearch {
    width: 60%;
  }
  .Y_NavLogo, .Y_NavAD {
    width: 20%;
  }
  #Y_NavContent_Left_Up{
  display:none;
  }
  #Y_NavContent_Left_Down{
  display:none;
  }
  .Y_NavSelect{
  display:none;
  }
}

@media screen and (max-width: 700px) {
  .Y_NavSearch {
    width: 80%;
  }
  .Y_NavAD {
    width: 20%;
  }
  .Y_NavLogo{
  display:none;
  }
  
}

.Y_NavBody {
  margin: 0px;
}

.Y_NavTop {
  width: 70%;
  height: 80px;
  maring: 0 auto;
  overflow: auto;
  margin-left: 50px;
}

.Y_NavTable {
  width: 100%;
  margin-top: 10px;
}

.Y_NavLogo {
  width: 15%;
  height: 65px;
}

.Y_NavSearch {
  width: 50%;
  height: 65px;
}

.Y_NavAD {
  width: 30%;
  height: 65px;
}

.Y_NavBlank {
  width: 5%;
}

.Y_NavBottom {
  width: 100%;
  height: 50px;
  border-top: 1px solid #D8D8D8;
  border-bottom: 2px solid blue;
  margin: 0;
}

.Y_SearchBar {
  width: 100%;
  box-sizing: border-box;
  border: 3px solid #2E2EFE;
  border-radius: 6px;
  font-size: 16px;
  background-color: white;
  padding: 12px 20px 12px 5px;
}

.Y_NavSelect {
  width: 100px;
  box-sizing: border-box;
  padding: 12px 20px 12px 5px;
  font-family: inherit;
  border-radius: 6px;
  font-size: 16px;
  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
  border: 3px solid #2E2EFE;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  margin-left: 5px;
  margin-top: 6px;
}

.Y_SearchButton {
  width: 80px;
  box-sizing: border-box;
  padding: 12px 5px;
  font-family: inherit;
  border-radius: 6px;
  font-size: 16px;
  border: 3px solid #2E2EFE;
  margin-top: 6px;
}

.Y_NavTopButton {
  position: fixed;
  right: 15px;
  bottom: 20px;
  display: none;
}

.Y_NavContent {
  width: 70%;
  height: 100%;
}

#Y_NavContent_Left_Down {
  border: 0;
  outline: 0;
  background-color: white;
  height: 45px;
  border-left: 1px solid #D8D8D8;
  border-right: 1px solid #D8D8D8;
}

#Y_NavContent_Left_Up {
  display: none;
  border: 0;
  outline: 0;
  background-color: white;
  height: 45px;
  border-left: 1px solid #D8D8D8;
  border-right: 1px solid #D8D8D8;
}

#Y_NavContent_Right {
  height: 45px;
}

#Y_All_Back {
  width: 100%;
  height: 100%;
  display: none;
  overflow: auto;
}

#myNavbar {
  position: absolute;
  right: 10px;
}
</style>
</head>
<body>
<div class="Y_NavBody">
<center>
<div class="Y_NavTop">
<table class="Y_NavTable">
<tr>
<td class="Y_NavLogo">
<a href="Y_Main.jsp"><img src="img/BillyU_Logo.png" alt="로고" width="100%" height="80%" /></a>
</td>
<td class="Y_NavBlank"> </td>

<form action="a.jsp" method="post">
<td class="Y_NavSearch">
  <input class="Y_SearchBar" type="text" name="search" placeholder="검색어를 입력해 주세요.">
</td>
<td class="Y_NavAD">
<div style="width:100%;height:100%">

<select name="category" class="Y_NavSelect">
<option value="not">선택</option>
<option value="대여">대여</option>
<option value="판매">판매</option>
<option value="나눔">나눔</option>
</select>

<input type="submit" value="검색" class="Y_SearchButton" />
</form>

</div>
</td>
</tr>
</table>
</div><!-- Y_NavTop 끝 -->


<div class="Y_NavBottom">
<div class="Y_NavContent">

<nav id="navbar" class="navbar">
<div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
<span class="glyphicon glyphicon-align-justify"></span>
</button>
<button id="Y_NavContent_Left_Down" class="navbar-brand" ><span class="glyphicon glyphicon-align-justify"> 전체카테고리▼</span></button>
<button id="Y_NavContent_Left_Up" class="navbar-brand" ><span class="glyphicon glyphicon-align-justify"> 전체카테고리▲</span></button>
</div>
<div class="collapse navbar-collapse" id="myNavbar">
<ul class="nav navbar-nav navbar-right">
<li><a id="Y_NavContent_Right" href="Y_Chat_Form.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>관심상품</a></li>
<li><a id="Y_NavContent_Right" href="K_myPage.jsp"><span class="glyphicon glyphicon-user"></span>마이페이지</a></li>
<li><a id="Y_NavContent_Right" href="Y_Login.jsp"><span class="glyphicon glyphicon-log-in"></span>
          <%
          if(session.getAttribute("id") != null){
        	  out.println("로그아웃");
          }
          else{
        	  out.println("로그인");
          }
          %>
          
          </a></li>
<li><a id="Y_NavContent_Right" href="Y_JoinForm.jsp"><span class="glyphicon glyphicon-check"></span>회원가입</a></li>
<li><a id="Y_NavContent_Right" href="K_product.jsp"><span class="glyphicon glyphicon-plus"></span>상품등록</a></li>
</ul>
</div>
</div>
</nav>

</div><!-- Y_NavContent 끝 -->
</div><!-- Y_NavBottom 끝 -->
</center>
<script>
      $(document).ready(function(){
        $(window).scroll(function(){
          if ($(this).scrollTop()>200){
            $('.Y_NavTopButton').fadeIn();
          }else{
            $('.Y_NavTopButton').fadeOut();
          }
        });
        $( '.Y_NavTopButton' ).click( function() {
          $( 'html, body' ).animate({scrollTop:0},300);
          return false;
        } );
        
        $('#Y_NavContent_Left_Down').click(function() {
        	$('#Y_NavContent_Left_Down').css('display','none');
        	$('#Y_NavContent_Left_Up').css('display','block');
        	$.ajax({
        		type : "POST",
        		url : "./Y_All_Category.jsp",
        		success:WhenSuccess,
        		error:WhenError
        	});
        });
        $('#Y_NavContent_Left_Up').click(function() {
        	$('#Y_NavContent_Left_Down').css('display','block');
        	$('#Y_NavContent_Left_Up').css('display','none');
        	$('#Y_All_Back').css('display','none');
        });
        
        function WhenSuccess(resdata){
        	$('#Y_All_Back').css('display','block').html(resdata);
        }

        function WhenError(){
        	alert('error');
        }
      } );
      //function open_win()
      //{
    //  window.open('Y_JoinForm.jsp','popup', 'width=400, height=600, scrollbars= no, toolbar=no, menubar=no,status=no,location=no,directories=no,resizeable=no')
      //}
      
    </script>
    <div>
      <a href="#" class="Y_NavTopButton" style="width:20px;height:20px">Top</a>
    </div>
    <center>
    <div id="Y_All_Back"></div>
    </center>
    </div>
</body>
</html>