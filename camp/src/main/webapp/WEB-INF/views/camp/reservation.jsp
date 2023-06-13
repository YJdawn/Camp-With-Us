<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/main.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/reservation.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/calendarStyle.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <script src="https://kit.fontawesome.com/a2e8ca0ae3.js" crossorigin="anonymous"></script>

</head>
<body>
    
    <jsp:include page="/WEB-INF/views/common/header.jsp" />

    <main>
		
        <form class="formsize">            


            <div class="subject">${campName}</div>

            <section class="info">
            <section class="calendar1">
                <div class="containerCal card-1">
                        <div class="calendar">
                            <div class="month">
                                <i class="fa fa-angle-left prev"></i>
                                <div class="date"></div>
                                <i class="fa fa-angle-right next"></i>
                            </div>
                            <div class="weekdays">
                                <div>sun</div>
                                <div>mon</div>
                                <div>tue</div>
                                <div>wed</div>
                                <div>thu</div>
                                <div>fri</div>
                                <div>sats</div>
                            </div>
                            <div class="days"> <!-- js 이용 달력 만들예정 -->
                                
                            </div>
                            <button class="reselect" type="button">다시 선택하기</button>
                            <div class="goto-today">
                                <div class="goto">
                                    <input type="text" placeholder="mm/yyyy" class="date-input">
                                    <button class="goto-btn" type="button">go</button>
                                </div>
                                <button class="today-btn" type="button">today</button>
                            </div>
                        </div>
                </div>
            </section>
            
            <section class="reverInfo">
                    <div class="SELECTDATE card-2">
                        <div class="today-date">
                            <div class="event-day">선택한 날짜</div>
                        </div>
                        <div class="check">
                            <!-- <div class="first-day"> -->
                                <input type="text" class="pickMonth" readonly><input type="text" class="mon" readonly><input type="text" class="pickDay" readonly><input type="text" class="dat" readonly>
                                <input type="text" class="dat2" readonly>
                            <!-- </div> -->
                            <input type="text" class="wave" readonly>
                            <!-- <div class="last-day"> -->
                                <input type="text" class="pickMonth" readonly><input type="text" class="mon" readonly><input type="text" class="pickDay" readonly><input type="text" class="dat" readonly>
                                <input type="text" class="dat2" readonly>
                            <!-- </div> -->
                        </div>
                        
                        <div class="TOTAL">
                            <div class="total">총 기간</div>
                            <div class="total-days"> <div class="dayBetween"></div><div class="dayBetween"></div></div>
                        </div>
                    </div>
                     
                        <div class="peopleNumber card-2">인원선택 
                
                            <div class="popleNumberch">
                                <div class="count">
                                성인
                                <input type="button" onclick="countAdult('minus')" value="-" class="minus card-1">
                                <div class="adultSelectContain">
                                    <input type="text" id="adultSelect" class="adultSelect" value="0" readonly>
                                </div>
                                <input type="button" onclick="countAdult('plus')" value="+" class="plus card-1">
                                </div>
                                <!-- <select class="adultSelect card-1">
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                </select>
                                명 -->
                                
                                <div class="count">
                                영/유아
                                <input type="button" onclick="countChild('minus')" value="-" class="minus card-1">
                                <div class="childSelectContain">
                                    <input type="text"  id="childSelect" class="childSelect" value="0" readonly>
                                </div>
                                <input type="button" onclick="countChild('plus')" value="+" class="plus card-1">
                                </div>
                                <!-- <select class="childrenSelect card-1">
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                </select>
                                명 -->
                            </div>
                           
                        </div>
                        <div class="priceInformation card-2">성수기 정보
                            <br>
                            <br>성수기(6~8월) 가격: 1인 기준 성인 30000, 아이 15000
                            <br>비성수기(6~8월 제외한 달) 기본가격: 1인 기준 성인 20000, 아이 10000
                            <br>총 숙박기간 : <span class="a"></span>
                            <br><br>	
                                <div id="priceSum"></div>
                        </div>
            </section>
            <section class="MemberInfo card-2">
                <div class="MemberInfoInput">
                예약자 이름<br><br><input type="text" class="name card-1">
                </div>
                <div class="MemberInfoInput">
                예약자 이메일<br><br><input type="text" class="name card-1">
                </div>
                <div class="MemberInfoInput">
                예약자 전화번호<br><br><input type="tel" class="name card-1">
                </div>
                <div class="MemberInfoInput">
                예약자 주소<br><br><input type="text" class="name card-1">
                </div>
                
            </section>
            </section>


    
            
            <br>

            <button type="button" class="btn btn-lg btn-primary" onclick="requestPay()">결제하기</button>
        </form>

    
        
    </main>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<script>

function countAdult(type)  {
  // 결과를 표시할 element
const adultElement = document.getElementById('adultSelect');
  
  // 현재 화면에 표시된 값
let numberAdult = adultElement.value;
  
  // 더하기/빼기
if(type == 'plus') {
    numberAdult = parseInt(numberAdult) + 1;
  }else if(type == 'minus' && Number(numberAdult) > 0)  {
    numberAdult = parseInt(numberAdult) - 1;
}
  
  // 결과 출력
  adultElement.value = numberAdult;
}

function countChild(type)  {
  // 결과를 표시할 element
const childElement = document.getElementById('childSelect');
  
  // 현재 화면에 표시된 값
let numberChild = childElement.value;
  
  // 더하기/빼기
if(type == 'plus') {
    numberChild = parseInt(numberChild) + 1;
  }else if(type == 'minus' && Number(numberChild) > 0)  {
    numberChild = parseInt(numberChild) - 1;
}
  
  // 결과 출력
  childElement.value = numberChild;
}

let priceValue;
let people;
var campName = "${campName}";
var memberNickname = "${loginMember.memberNickname}";
var memberEmail = "${loginMember.memberEmail}";
var memberNo = "${loginMember.memberNo}";

const Mkey = document.querySelectorAll(".minus");
const Pkey = document.querySelectorAll(".plus");
//결제금액
document.addEventListener("DOMContentLoaded", function() {
    
            const month = localStorage.getItem("Month");
           
            Pkey.forEach((element) => {
                element.addEventListener("click", calculatePrice);
                });
            Mkey.forEach((element) => {
                element.addEventListener("click", calculatePrice);
                });
            const adultSelect = document.getElementById("adultSelect");
            const childSelect = document.getElementById("childSelect");
            const priceElement = document.getElementById("priceSum");
            
            function calculatePrice() {
                console.log("calculator loaded")
                $.ajax({
                    url: "selectPrice",
                    type: "GET",
                    data: {"month" : Number(selectMonth[0].value)},
                    success: function(price) {
                        console.log(price);
                        console.log("몇월달 ? " + Number(selectMonth[0].value));
                        let childPrice = price * 0.5;
                        let adultOptionValue = adultSelect.value;
                        let adultTotalPrice = price * adultOptionValue;
                        
                        
                        const totalday = localStorage.getItem("totalDay");

                        let childrenOptionValue = childSelect.value;
                        let childrenTotalPrice = childPrice * childrenOptionValue;
                        
                        let totalPeople = Number(adultOptionValue) + Number(childrenOptionValue);
                        
                        let totalPrice = 0;
                        console.log(people);
                        console.log(adultOptionValue);
                        console.log(childrenOptionValue);

                        if(localStorage.getItem("totalDay") == null) {
                            totalPrice = (adultTotalPrice + childrenTotalPrice)*0;
                        } else {
                            totalPrice = (adultTotalPrice + childrenTotalPrice)*localStorage.getItem("totalDay");
                        }
                        priceElement.textContent = "총 가격: " + totalPrice + "원";
                        priceValue = totalPrice;
                        people = totalPeople;
                        
                        console.log("스토리지" + localStorage.getItem("totalDay"))
                    

                    },
                    error: function() {
                        console.log("에러 발생");
                    }
                });
            }
            
            
            adultSelect.addEventListener("input", calculatePrice);
            childSelect.addEventListener("input", calculatePrice);
            calculatePrice();
    
        });



//결제화면
function requestPay() {
            console.log("requestPay함수 실행");
            
                var IMP = window.IMP;
                IMP.init("imp66352643");
                IMP.request_pay({
                    pg: 'kcp.A52CY',
                    pay_method: 'card',
                    merchant_uid: 'merchant_' + new Date().getTime(),
                    name: campName,
                    amount: priceValue,
                    buyer_email: memberEmail,
                    buyer_name: memberNickname,
                    buyer_tel: '010-1234-5678',
                    buyer_addr: '구매자 주소 강남구 삼성동',
    
          }, function (rsp) { // callback

            console.log(rsp);  
            
            if (rsp.success) {

                  console.log("성공");
                  alert("결제가 완료되었습니다");
                 

                  let selectfirstmonth = document.querySelectorAll(".pickMonth")[0].textContent;
                  let selectfirstday = document.querySelectorAll(".pickDay")[0].textContent;
                  let selectlastmonth = document.querySelectorAll(".pickMonth")[1].textContent;
                  let selectlastday = document.querySelectorAll(".pickDay")[1].textContent;
                  console.log(selectfirstmonth);
                  console.log(selectfirstday);
                  console.log(selectlastmonth);
                  console.log(selectlastday);
                  let selectDate = selectfirstmonth + '월 ' + selectfirstday +'일 - ' + selectlastmonth +'월 ' + selectlastday + '일'
                  console.log(selectDate)

                 $.ajax({
                    url: "reservationInfo", 
                    type: "POST",
                    data: { "campingName" : campName,
                            "reservSelDate" : selectDate,
                            "buyerName" : rsp.buyer_name,
                            "amount" : priceValue,
                            "people" : people,
                            "memberNo" : memberNo },

                    success: function(result) {
                       
                        if(result > 0) {
                            console.log("예약정보 전송완료");
                            window.location.href = '${contextPath}/member/myPage/myReservation';


                        }else {
                            console.log("예약정보 전송실패");
                        }

                    },
                    error: function() {
                        console.log("예약정보전송 ajax 에러발생");
                    }
                });

              } else {
                console.log("실패");
                alert("날짜/인원을 선택해주세요.");
              }
            });
}


//  buyer_postcode: '123-456'
</script>
   

 <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
   
    <script src="${contextPath}/resources/js/calendar.js"></script>

 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>


</body>
</html>