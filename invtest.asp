<!-- #include virtual="/inc_folder/inc_variable.asp" -->
<%Session.Timeout=1440%>
<!-- #include virtual="/inc_folder/inc_count.asp" -->


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>스마트재무설계</title>
	<link href="/css/smart.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/jquery-ui/jquery-ui.css">
	<script src="/jquery-ui/external/jquery/jquery.js"></script>
    <script src="/jquery-ui/jquery-ui.js"></script>
    
	<!--[if lte IE 8]><script language="javascript" type="/text/javascript" src="flot/excanvas.min.js"></script><![endif]-->
	<script language="javascript" type="text/javascript" src="/flot/jquery.flot.js"></script>
	<script language="javascript" type="text/javascript" src="/flot/jquery.flot.categories.js"></script>

	<script src="/jquery-ui/jquery.ui.touch-punch.min.js"></script>

	<script language="javascript" type="text/javascript" src="/js/invest_js.asp?no=12<%=Year(Date)%>34<%=Month(Date)%>56<%=Day(Date)%>"></script>
    
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1119726588512865"
     crossorigin="anonymous"></script>
</head>

<body>

	<div class="smart_sub">
    
        <div class="sub_title">
			<a href="/home.asp"><img src="images/btn_back.png" class="btn_back" /></a>
        	투자성향진단
        </div>
        
        <div class="plate_14">

			<div class="test_title">1. 고객님의 연령대는 어떻게 되십니까?</div>
            <div class="test_answer">
                <input type="radio" name="q1" value="4"> 19세 이하
                <input type="radio" name="q1" value="4"> 20~40세
                <input type="radio" name="q1" value="3"> 41~50세
                <input type="radio" name="q1" value="2"> 51~60세
                <input type="radio" name="q1" value="1"> 61세 이상
            </div>

			<div class="test_title">2. 투자하고자 하는 자금의 투자가능 기간은 얼마나 되십니까?</div>
            <div class="test_answer">
                <input type="radio" name="q2" value="1"> 6개월 미만
                <input type="radio" name="q2" value="2"> 6개월 ~ 1년 미만
                <input type="radio" name="q2" value="3"> 1년 ~ 2년 미만<br />
                <input type="radio" name="q2" value="4"> 2년 ~ 3년 미만
                <input type="radio" name="q2" value="5"> 3년 이상
            </div>

			<div class="test_title">3. 다음 중 고객님의 투자경험과 가장 가까운 금융상품은 무엇입니까?</div>
            <div class="test_answer">
                <input type="radio" name="q3" value="1"> 은행, 예.적금, 국채, 지방채, 보증채, MMF, CMA 등<br />
                <input type="radio" name="q3" value="2"> 금융채, 신용도가 높은 회사채, 채권형 펀드, 원금보장형 ELS 등<br />
                <input type="radio" name="q3" value="3"> 신용도 중간 등급 회사채, 원금의 일부만 보장되는 ELS, 혼합형 펀드 등<br />
                <input type="radio" name="q3" value="4"> 신용도가 낮은 회사채, 주식, 원금이 보장되지 않는 ELS, 시장수익률 수준의 수익을 추구하는 주식형 펀드 등<br />
                <input type="radio" name="q3" value="5"> ELW, 선물옵션, 시장수익률 이상의 수익을 추구하는 주식형펀드, 파생상품펀드, 주식신용거래 등 6개월 미만<br />
            </div>

			<div class="test_title">4. 금융상품 투자에 대한 본인의 지식수준은 어느 정도라고 생각하십니까?</div>
            <div class="test_answer">
                <input type="radio" name="q4" value="1"> 매우 낮은 수준: 투자의사 결정을 스스로 내려본 경험이 없는 정도<br />
                <input type="radio" name="q4" value="2"> 낮은 수준: 주식과 채권의 차이를 구별할 수 있는 정도<br />
                <input type="radio" name="q4" value="3"> 높은 수준: 투자할 수 있는 대부분 금융상품 차이를 구별할 수 있는 정도<br />
                <input type="radio" name="q4" value="4"> 매우 높은 수준: 금융상품을 비롯하여 모든 투자대상 상품차이를 이해할 수 있는 정도<br />
            </div>

			<div class="test_title">5. 투자하고자 하는 자금은 전체 금융자산(부동산 등 제외) 중 어느정도 입니까?</div>
            <div class="test_answer">
                <input type="radio" name="q5" value="5"> 10% 이하
                <input type="radio" name="q5" value="4"> 10% 초과 ~ 20% 이하
                <input type="radio" name="q5" value="3"> 20% 초과 ~ 30% 이하<br />
                <input type="radio" name="q5" value="2"> 30% 초과 ~ 40% 이하
                <input type="radio" name="q5" value="1"> 40% 초과
            </div>

        </div>
        
        <div class="plate_15">

			<div class="test_title">6. 다음 중 고객님의 수입원을 가장 잘 나타내는 것은 무엇입니까?</div>
            <div class="test_answer">
                <input type="radio" name="q6" value="3"> 현재 일정한 수입이 발생하고 있으며, 향후 현재 수준을 유지하거나 증가할 것으로 예상<br />
                <input type="radio" name="q6" value="2"> 현재 일정한 수입이 발생하고 있으나, 향후 감소하거나 불안정할 것으로 예상<br />
                <input type="radio" name="q6" value="1"> 현재 일정한 수입이 없으며 연금이 주 수입원임<br />
            </div>

			<div class="test_title">7. 투자 원금에 손실이 발생한다면 고객님이 감내할 수 있는 수준은 무엇입니까?</div>
            <div class="test_answer">
                <input type="radio" name="q7" value="2"> 무슨 일이 있어도 투자 원금은 보전되어야 한다<br />
                <input type="radio" name="q7" value="2"> 투자 원금에서 최소한의 손실만 감수할 수 있다<br />
                <input type="radio" name="q7" value="4"> 투자 원금 중 일부의 손실을 감수할 수 있다<br />
                <input type="radio" name="q7" value="6"> 기대 수익이 높다면 위험이 높아도 상관하지 않는다<br />
            </div>

        </div>


        <div class="plate_s">SOLUTION
        	<button id="btn_result">결과보기</button>
		</div>


        <div class="plate_16">
        
			<img src="" id="invtest_result" /><br />
                
        </div>
                
    </div>

</body>
</html>
