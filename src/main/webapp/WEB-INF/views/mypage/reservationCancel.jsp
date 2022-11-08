<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>제주어때 예약페이지</title>
    <link rel="shortcut icon" href="/resources/assets/images/fav.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="/resources/assets/images/fav.jpg">
    <link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/assets/css/all.min.css">
    <link rel="stylesheet" href="/resources/assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/reservation.css" />
	<script src="/resources/js/jquery-3.6.1.min.js"></script>
<!-- 	<link rel="stylesheet" href="/resources/assets/css/reservationStyle.css">    -->
	<style>
		.myGrade {
            font-size: 13px;
            margin-bottom: 5px;
            color: rgb(154, 153, 153);
        }
        
        .card-title {
            font-size: 15px;
            font-weight: bold;
        }

        .test15 {
            font-size: 13px;
            font-weight: 540;
        }

        .list-group-item {
            text-align: center;
            font-size: 16px;
            font-weight: bold;
        }

        #price {
            color: red;
        }
        .card {
            margin-top: 15px;
            margin-bottom: 70px;
        }
        .reserve {
            font-size: 15px;
            font-weight: bold;
            color: rgb(191, 191, 191);
        }
        #reserveInfo {
            margin-bottom: 23px;
            font-size: 20px;
            font-weight: bold;
        }

        .info {
            margin-bottom: 10px;
        } 

        .inputInfo {
            margin-bottom: 10px;
        }
        .login {
            font-size: 15px;
            font-weight: bold;
            color: white;
        }
        #check1 {
            font-size: 15px;
            font-weight: bold;
            margin-top: 15px;
            margin-bottom: 10px;
        }
        .check6 {
            font-size: 13px;
            font-weight: bold;
        }
        .check7 {
            margin-left: 6px;
        }

        #price1 {
            font-weight: bold;
        }

        .test5 {
            color: red;
        }
	</style>
</head>
    <body>
         <header class="container-flui">
		<div class="header-top">
			<div class="container">
				<div class="row">

					<div class="col-md-4 d-none d-md-block mail-detail"></div>
					<div class="col-md-4 logo">
						<img src="/resources/assets/images/logo.png" alt=""> <a
							data-toggle="collapse" data-target="#menu-jk" href="#menu-jk"><i
							class="fas d-block d-sm-block d-md-none small-menu fa-bars"></i></a>
					</div>
					
					<div class="col-md-4 d-none d-md-block social-link ">
						<c:if test="${empty sessionScope.loginUser  }">
							<div class="login-area">
								<table align="right">
									<tr>
										<td rowspan="2">
											<button onclick="location.href='/member/loginView.kh'"
												class="btn btn-primary">로그인</button>
											<button onclick="location.href='/member/joinView.kh'"
												class="btn btn-secondary">회원가입</button>
										</td>
									</tr>
								</table>
							</div>
						</c:if>
						<c:if test="${not empty sessionScope.loginUser }">
							<table align="right">
								<tr>
									<td><a href="/">${sessionScope.loginUser.memberId }</a>님
										환영합니다</td>
								</tr>
								<tr>
									<td><a href="/member/logout.kh">로그아웃</a></td>
								</tr>
							</table>
						</c:if>
					</div>
				</div>
			</div>
		</div>


		<div id="menu-jk" class="header-nav d-none d-md-block">
               <div class="container">
                   <div class="row nav-row">
                       <ul>
                           <li><a href="/home">홈</a>
                          <li><a href="/notice/list">공지사항</a></li>
                          <li><a href="/pension/list">숙소 리스트</a></li>
                          <li><a href="/community/chat">커뮤니티</a></li>
                          <li><a href="/mypage/myPage">마이페이지</a></li>
                          <li><a href="/coupon/couponEventList">쿠폰 이벤트</a></li>
                          <li><a href="/admin/adminPage">관리자페이지(임시)</a></li>
                       </ul>
                   </div>
               </div>
           </div>
        </header>      

    <div class="page-nav no-margin row">
        <div class="container">
            <div class="row">
                <h2>About Traveler</h2>
                <ul>
                    <li> <a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><i class="fas fa-angle-double-right"></i> About Us</li>
                </ul>
            </div>
        </div>
    </div>
<div class="row contact-rooo no-margin">
        
        <div class="container">
            <hr>
            <div class="row">
                
                <div style="padding:20px; " class="col-md-7" >
                    <div id="reserveInfo">예약 내역</div>
                    <section id="about" class="contianer-fluid">
                        <div class="container">
                             <div class="row">
                                 <div class="image">
                                     <img src="http://image.goodchoice.kr/resize_490x348/affiliate/2022/05/30/629453643aa47.jpg" style="height: 350px;">
                                 </div>                               
                             </div>
                        </div>
                        </section>
                        <div style="margin-top: 30px; position: relative; left: 10px;" class="row">
                            <div style="text-align: center; background-color: lightblue;"
                                class="col-sm-9">
                                <br>
                                <div class="login">예약정보를 변경하고 싶으시면</div>
                                <div class="login">예약취소 후 다시 예약해주시기 바랍니다.</div>
                                <div class="login" style="margin-top: 10px;">로그인</div>
                                <br>
                            </div>
                        </div>
                </div>   
                
                
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-title">숙소 이름</h5>
                      <p class="card-text">${rList.rePensionName }</p>
                      <br>
                      <h5 class="card-title">객실 타입 / 기간</h5>
                      <p class="card-text">${rList.rePensionNo }</p>
                      <br>
                      <h5 class="card-title">체크인</h5>
                      <p class="card-text">${rList.reStartDate }</p>
                      <br>
                      <h5 class="card-title">체크 아웃</h5>
                      <p class="card-text">${rList.reEndDate }</p>
                      <hr>
                      <h5 class="card-title">총 결제 금액</h5>
                      <h5 class="card-title" id="price">${rList.rePrice }원</h5>
                      <ul>
                        <li class="test15">ㆍ결제완료 후 내 정보에서 예약 내</li>
                        <li style="margin-left: 16px;" class="test15">역을 확인해주세요.</li>
                      </ul>

                    </div>
                    
                    <ul class="list-group list-group-flush">
                       <li class="list-group-item" id="button1" title="결제하기 버튼">결제하기</li>
                      <li class="list-group-item" onclick="cancel();">결제대기 취소</li>
                    </ul>

                  </div>
                  
            </div>
        </div>

    </div>
   <footer>
	    <div class="container">
	        <div class="row">
	            <div class="col-md-3 fotblog">
	                <p class="fab fa-instagram"></p>
	                <a href="https://www.instagram.com/explore/tags/%EC%A0%9C%EC%A3%BC%EB%8F%84/?next=%2Fspecial_jejudo%2F" style="color: white;" target="_blank">Instagram</a> <br>
	                <a href="https://www.instagram.com/explore/tags/%EC%A0%9C%EC%A3%BC%EB%8F%84%EB%A7%9B%EC%A7%91/?next=%2Fspecial_jejudo%2F" style="color: white;" target="_blank">Restaurant</a> <br>
	                <a href="https://www.instagram.com/explore/tags/%EC%A0%9C%EC%A3%BC%EB%8F%84%EC%B9%B4%ED%8E%98/?next=%2Fspecial_jejudo%2F" style="color: white;" target="_blank">Cafe</a>
	            </div>
	            <div class="col-md-3 fotblog">
	                <p class="fab fa-facebook-square"></p>
	                <a href="https://www.facebook.com/happyjejudo" style="color: white;" target="_blank">Facebook</a>
	            </div>
	            <div class="col-md-3 glink">
	                <p class="fab fa-twitter-square"></p>
	                <a href="https://twitter.com/happyjejudo" style="color: white;" target="_blank">Twiter</a>
	            </div>
	            <div class="col-md-3 tags">
	                <h2>Contect</h2>
	                <p>email@email.com</p>
	            </div>
	        </div>
	    </div>
	</footer>
		<div class="copy">
            <div class="container">
                <a href="https://www.smarteyeapps.com/">2015 &copy; All Rights Reserved | Designed and Developed by Smarteyeapps</a>              
                <span>
	                <a><i class="fab fa-github"></i></a>
	                <a><i class="fab fa-google-plus-g"></i></a>
	                <a><i class="fab fa-pinterest-p"></i></a>
	                <a><i class="fab fa-twitter"></i></a>
	                <a><i class="fab fa-facebook-f"></i></a>
        		</span>
            </div>

        </div>
   
    </body>
     <script>
     $("#button1").click(function(){
  	     		//가맹점 식별코드
  	     		IMP.init('imp28778843');
  	     		IMP.request_pay({
  	     		    pg : 'kcp',
  	     		    pay_method : 'card',
  	     		    merchant_uid : 'merchant_' + new Date().getTime(),
  	     		    name : '한재민' ,
 		    		amount : '501',
//   	     			amount : '${price}',
  	     		    buyer_email : 'iamport@siot.do',
  	     		    buyer_name : '${rList.memberId}'
//   	     		    buyer_tel : $("#phone").val()
//  	      		    buyer_addr : '서울 강남구 도곡동',
//  	      		    buyer_postcode : '123-456'
  	     		},function(rsp) {
  	     			console.log(rsp);
  	     		    if ( rsp.success ) {
  	     		        msg += '고유ID : ' + rsp.imp_uid;
  	     		        msg += '상점 거래ID : ' + rsp.merchant_uid;
  	     		        msg += '결제 금액 : ' + rsp.paid_amount;
  	     		        msg += '카드 승인번호 : ' + rsp.apply_num;  
  	     		        
  	     		        $.ajax({
  	     		        	url : "/pay/success",
  	     		        	data : {
  	     		        		"payId" : rsp.imp_uid,
  	     		        		"roomNo" : '${rList.roomNo}',
  	     		        		"payPensionNo" : '${rList.rePensionNo}',
  	     		        		"payPrice" : rsp.paid_amount        		
  	     		        	},
  	     		        	type : "post",
  	     		        	success : function(result) {
  	     		        		$.ajax({
  	     		        			url : "/reservation/success",
  	     		        			data : {
  	     		        				"reservationName" : '${rList.reservationName}',
  	     		        				"roomNo" : '${rList.roomNo}',
  	     		        				"rePensionNo" : '${rList.rePensionNo}',
  	     		        				"rePrice" : rsp.paid_amount,
  	     		        				"reStartDate" : '${rList.reStartDate}',
  	     		        				"reEndDate" : '${rList.reEndDate}'
  	     		        			},
  	     		        			type : "post",
  	     		        			success : function(result) {
  	     		        				$.ajax({
  	     		        					url : "/reservation/deleteWaitReserve",
  	     		        					data : {
  	     		        						"reservationNo" : '${rList.reservationNo}'
  	     		        					},
  	     		        					type : "post",
  	     		        					success : function(result) {
  	     		        						alert("예약이 완료되었습니다.");
  	     		        						location.href = "/pension/list";
  	     		        					}
  	     		        				});
  	     		        				
  	     		        			},
  	     		        			error : function() {
  	    	     		        		alert("예약 등록 실패!");
  	    	     		        	}
  	     		        		});

  	     		        	},
  	     		        	error : function() {
  	     		        		alert("결제 등록 실패!");
  	     		        	}
  	     		        });
  	     		    } else {
  	     		    	 var msg = '결제에 실패하였습니다. 처음부터 다시 진행해주세요. ';
  	     		         msg += '에러내용 : ' + rsp.error_msg;
  	     		       alert(msg);
  	     		     location.href = "/pension/list";
  	     		    }	
//   	     		  location.href = "/pension/list";
  	     		});	
  	  
  	    	return false
  	       	    	
      });     
     
     function cancel() {
    	 if(confirm("정말 결제진행을 취소하시겠습니까?")) {
    		 $.ajax({
    			url :  "/reservation/deleteWaitReserve",
    			data : {
    				"reservationNo" : '${rList.reservationNo}'
    			},
    		 	type : "post",
    		 	success : function(result) {
    		 		alert("취소되었습니다.");
    		 		location.href = "/pension/list";
    		 	},
    		 	error : function() {
    		 		alert("취소에 실패했습니다.");
    		 	}
    		 });
    	 }else {
    		 location.href="/reservation/cancel?reservationNo=${rList.reservationNo}";
    	 }
     }

     
     </script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <script src="/resources/assets/js/popper.min.js"></script>
    <script src="/resources/assets/js/bootstrap.min.js"></script>
    <script src="/resources/assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="/resources/assets/plugins/slider/js/owl.carousel.min.js"></script>
    <script src="/resources/assets/js/script.js"></script>
    
</html>
