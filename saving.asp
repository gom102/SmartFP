<!-- #include virtual="/inc_folder/inc_variable.asp" -->
<%Session.Timeout=1440%>
<!-- #include virtual="/inc_folder/inc_count.asp" -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>스마트재무설계</title>
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

	<script src="/js/saving.js"></script>

    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1119726588512865"
     crossorigin="anonymous"></script>
</head>

<body>

	<div class="smart_sub">
    
        <div class="sub_title">
			<a href="/home.asp"><img src="images/btn_back.png" class="btn_back" /></a>
        	투자설계
        </div>
        
        <div class="plate_21">

        	<div>
                <div class="label">저축금액</div>
                <button id="btn_l_saveMoney" class="ui-button btn_left"></button>
                <div id="Hs_saveMoney" class="ui-slider"></div>
                <button id="btn_r_saveMoney" class="ui-button btn_right"></button>
                <input type="text" id="Ti_saveMoney" class="input_text" disabled="disabled" value="200" /> 만원
            </div>

        	<div>
                <div class="label">저축기간</div>
                <button id="btn_l_savePeriod" class="ui-button btn_left"></button>
                <div id="Hs_savePeriod" class="ui-slider"></div>
                <button id="btn_r_savePeriod" class="ui-button btn_right"></button>
                <input type="text" id="Ti_savePeriod" class="input_text" disabled="disabled" value="10" /> 년
            </div>

        	<div>
                <div class="label">거치기간 (저축 후)</div>
                <button id="btn_l_spentPeriod" class="ui-button btn_left"></button>
                <div id="Hs_spentPeriod" class="ui-slider"></div>
                <button id="btn_r_spentPeriod" class="ui-button btn_right"></button>
                <input type="text" id="Ti_spentPeriod" class="input_text" disabled="disabled" value="0" /> 년
            </div>

        	<div>
                <div class="label">금리 or 수익률 (년)</div>
                <button id="btn_l_rateReturn" class="ui-button btn_left"></button>
                <div id="Hs_rateReturn" class="ui-slider"></div>
                <button id="btn_r_rateReturn" class="ui-button btn_right"></button>
                <input type="text" id="Ti_rateReturn" class="input_text" disabled="disabled" value="8" /> %
            </div>

<p></p>

			<div class="test_title">부리방법</div>
            <div class="test_answer">
                <input type="radio" name="Method" value="단리"> 단리 (수수료 X)
                <input type="radio" name="Method" value="월복리" checked="checked"> 월복리
                <input type="radio" name="Method" value="분기복리"> 분기복리
                <input type="radio" name="Method" value="반기복리"> 반기복리
                <input type="radio" name="Method" value="연복리"> 연복리
            </div>

			<div class="test_title">세율</div>
            <div class="test_answer">
                <input type="radio" name="Tax" value="일반과세" checked="checked"> 일반과세
                <input type="radio" name="Tax" value="세금우대"> 세금우대
                <input type="radio" name="Tax" value="비과세"> 비과세
            </div>


        </div>
        
        <div class="plate_22">

        	<div>
                <div class="label">(선취) 수수료</div>
                <button id="btn_l_payBefore" class="ui-button btn_left"></button>
                <div id="Hs_payBefore" class="ui-slider"></div>
                <button id="btn_r_payBefore" class="ui-button btn_right"></button>
                <input type="text" id="Ti_payBefore" class="input_text" disabled="disabled" value="14.5" /> %
            </div>

        	<div>
                <div class="label">(선취) 수수료 부과기간</div>
                <button id="btn_l_payBeforeYear" class="ui-button btn_left"></button>
                <div id="Hs_payBeforeYear" class="ui-slider"></div>
                <button id="btn_r_payBeforeYear" class="ui-button btn_right"></button>
                <input type="text" id="Ti_payBeforeYear" class="input_text" disabled="disabled" value="7" /> 년
            </div>

        	<div>
                <div class="label">(후취) 수수료 or 운용보수</div>
                <button id="btn_l_payAfter" class="ui-button btn_left"></button>
                <div id="Hs_payAfter" class="ui-slider"></div>
                <button id="btn_r_payAfter" class="ui-button btn_right"></button>
                <input type="text" id="Ti_payAfter" class="input_text" disabled="disabled" value="0.8" /> %
            </div>

        	<div>
                <div class="label">(후취) 수수료 or 운용보수 부과기간</div>
                <button id="btn_l_payAfterYear" class="ui-button btn_left"></button>
                <div id="Hs_payAfterYear" class="ui-slider"></div>
                <button id="btn_r_payAfterYear" class="ui-button btn_right"></button>
                <input type="text" id="Ti_payAfterYear" class="input_text" disabled="disabled" value="0" /> 년
            </div>

        </div>

        <div class="plate_19">
        
        
        
		<div class="demo-container">
			<div id="placeholder" class="demo-placeholder"></div>
		</div>
        
        
        
        </div>
        
        <div class="plate_s2">
        	<input type="text" class="input_text" disabled="disabled" id="Ti_spent" value="" />
            년 후 예상되는 총 자산,
        	<input type="text" class="input_text ss" disabled="disabled" id="Ti_futureMoney" /> 원
        </div>
        
        <div class="plate_23">


			<table>
            <tr>
            	<td width="45">회차</td>
                <td width="80">투입금액</td>
                <td width="80">수익</td>
                <td width="90">적립금</td>
                <td width="90">세후 적립금</td>
                <td width="60">누적수익률</td>
            </tr>
            </table>
            <div class="overdata">
			<table class="datatable">
            </table>
			</div>

        </div>
        
    </div>

</body>
</html>
