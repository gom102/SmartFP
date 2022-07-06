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
	<script language="javascript" type="text/javascript" src="/flot/jquery.flot.pie.js"></script>

	<script src="/jquery-ui/jquery.ui.touch-punch.min.js"></script>
	<script src="/js/portfolio.js"></script>
    
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1119726588512865"
     crossorigin="anonymous"></script>
</head>

<body>

	<div class="smart_sub">
    
        <div class="sub_title">
			<a href="/home.asp"><img src="images/btn_back.png" class="btn_back" /></a>
        	포트폴리오
        </div>
        
        <div class="plate_17">

            <div class="demo-container">
                <div id="placeholder" class="demo-placeholder"></div>
            </div>

        </div>


        <div class="plate_s1">
        	자산합계: <input type="text" class="input_text" disabled="disabled" id="moneyTotal" /> 백만원, &nbsp; &nbsp;
        	가중평균수익률: <input type="text" class="input_text" disabled="disabled" id="wacc" /> %
        </div>

       
        <div class="plate_18">

        	<div>
                <div class="label">주식형 자산비중</div>
                <button id="btn_l_moneyStock" class="ui-button btn_left"></button>
                <div id="Hs_moneyStock" class="ui-slider"></div>
                <button id="btn_r_moneyStock" class="ui-button btn_right"></button>
                <input type="text" id="Ti_moneyStock" class="input_text" disabled="disabled" value="200" /> 백만원
                <input type="text" id="Ti_weightStock" class="input_text percent" disabled="disabled" value="0" /> %
            </div>

        	<div>
                <div class="label">채권형 자산비중</div>
                <button id="btn_l_moneyBond" class="ui-button btn_left"></button>
                <div id="Hs_moneyBond" class="ui-slider"></div>
                <button id="btn_r_moneyBond" class="ui-button btn_right"></button>
                <input type="text" id="Ti_moneyBond" class="input_text" disabled="disabled" value="500" /> 백만원
                <input type="text" id="Ti_weightBond" class="input_text percent" disabled="disabled" value="0" /> %
            </div>

        	<div>
                <div class="label">현금 및 유동성 자산비중</div>
                <button id="btn_l_moneyCash" class="ui-button btn_left"></button>
                <div id="Hs_moneyCash" class="ui-slider"></div>
                <button id="btn_r_moneyCash" class="ui-button btn_right"></button>
                <input type="text" id="Ti_moneyCash" class="input_text" disabled="disabled" value="300" /> 백만원
                <input type="text" id="Ti_weightCash" class="input_text percent" disabled="disabled" value="0" /> %
            </div>

        	<div>
                <div class="label">부동산 자산비중</div>
                <button id="btn_l_moneyReal" class="ui-button btn_left"></button>
                <div id="Hs_moneyReal" class="ui-slider"></div>
                <button id="btn_r_moneyReal" class="ui-button btn_right"></button>
                <input type="text" id="Ti_moneyReal" class="input_text" disabled="disabled" value="0" /> 백만원
                <input type="text" id="Ti_weightReal" class="input_text percent" disabled="disabled" value="0" /> %
            </div>

        	<div>
                <div class="label">기타 (미술, 골동품 등) 자산비중</div>
                <button id="btn_l_moneyOther" class="ui-button btn_left"></button>
                <div id="Hs_moneyOther" class="ui-slider"></div>
                <button id="btn_r_moneyOther" class="ui-button btn_right"></button>
                <input type="text" id="Ti_moneyOther" class="input_text" disabled="disabled" value="0" /> 백만원
                <input type="text" id="Ti_weightOther" class="input_text percent" disabled="disabled" value="0" /> %
            </div>


        </div>

        <div class="plate_19">
        
            <div class="demo-container">
                <div id="placeholder1" class="demo-placeholder"></div>
            </div>
        
        </div>
        
        <div class="plate_s2">
        	<button id="btn_l_spent" class="ui-button btn_left"></button>
        	<input type="text" class="input_text" disabled="disabled" id="Ti_spent" value="50" />
            <button id="btn_r_spent" class="ui-button btn_right"></button> 년 후 예상되는 총 자산,
        	<input type="text" class="input_text" disabled="disabled" id="Ti_futureMoney" /> 백만원
        </div>
        
        <div class="plate_20">

        	<div>
                <div class="label">주식형 자산 수익률</div>
                <button id="btn_l_rateStock" class="ui-button btn_left"></button>
                <div id="Hs_rateStock" class="ui-slider"></div>
                <button id="btn_r_rateStock" class="ui-button btn_right"></button>
                <input type="text" id="Ti_rateStock" class="input_text" disabled="disabled" value="8" /> %
            </div>

        	<div>
                <div class="label">채권형 자산 수익률</div>
                <button id="btn_l_rateBond" class="ui-button btn_left"></button>
                <div id="Hs_rateBond" class="ui-slider"></div>
                <button id="btn_r_rateBond" class="ui-button btn_right"></button>
                <input type="text" id="Ti_rateBond" class="input_text" disabled="disabled" value="3.5" /> %
            </div>

        	<div>
                <div class="label">현금 및 유동성 자산 수익률</div>
                <button id="btn_l_rateCash" class="ui-button btn_left"></button>
                <div id="Hs_rateCash" class="ui-slider"></div>
                <button id="btn_r_rateCash" class="ui-button btn_right"></button>
                <input type="text" id="Ti_rateCash" class="input_text" disabled="disabled" value="2" /> %
            </div>

        	<div>
                <div class="label">부동산 수익률</div>
                <button id="btn_l_rateReal" class="ui-button btn_left"></button>
                <div id="Hs_rateReal" class="ui-slider"></div>
                <button id="btn_r_rateReal" class="ui-button btn_right"></button>
                <input type="text" id="Ti_rateReal" class="input_text" disabled="disabled" value="3.5" /> %
            </div>

        	<div>
                <div class="label">기타 자산 수익률</div>
                <button id="btn_l_rateOther" class="ui-button btn_left"></button>
                <div id="Hs_rateOther" class="ui-slider"></div>
                <button id="btn_r_rateOther" class="ui-button btn_right"></button>
                <input type="text" id="Ti_rateOther" class="input_text" disabled="disabled" value="3" /> %
            </div>

        </div>

        
    </div>

</body>
</html>
