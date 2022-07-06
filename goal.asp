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
	<script src="/js/goal.js"></script>

    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1119726588512865"
     crossorigin="anonymous"></script>
</head>

<body>

	<div class="smart_sub">
    
        <div class="sub_title">
			<a href="/home.asp"><img src="images/btn_back.png" class="btn_back" /></a>
        	목적자금설계
        </div>
        
        <div class="plate_10">

        	<div>
                <div class="label">목표금액 (현재가치)</div>
                <button id="btn_l_goalMoney" class="ui-button btn_left"></button>
                <div id="Hs_goalMoney" class="ui-slider"></div>
                <button id="btn_r_goalMoney" class="ui-button btn_right"></button>
                <input type="text" id="Ti_goalMoney" class="input_text" disabled="disabled" value="100" /> 백만
            </div>

        	<div>
                <div class="label">목표까지 남은기간</div>
                <button id="btn_l_year" class="ui-button btn_left"></button>
                <div id="Hs_year" class="ui-slider"></div>
                <button id="btn_r_year" class="ui-button btn_right"></button>
                <input type="text" id="Ti_year" class="input_text" disabled="disabled" value="10" /> 년
            </div>

        	<div>
                <div class="label">저축가능기간</div>
                <button id="btn_l_saveYear" class="ui-button btn_left"></button>
                <div id="Hs_saveYear" class="ui-slider"></div>
                <button id="btn_r_saveYear" class="ui-button btn_right"></button>
                <input type="text" id="Ti_saveYear" class="input_text" disabled="disabled" value="10" /> 년
            </div>

        	<div>
                <div class="label">목표를 위해 미리 준비한 자산</div>
                <button id="btn_l_Asset" class="ui-button btn_left"></button>
                <div id="Hs_Asset" class="ui-slider"></div>
                <button id="btn_r_Asset" class="ui-button btn_right"></button>
                <input type="text" id="Ti_Asset" class="input_text" disabled="disabled" value="0" /> 만원
            </div>

        	<div>
                <div class="label">목표를 위한 저축 및 투자(월)</div>
                <button id="btn_l_saving" class="ui-button btn_left"></button>
                <div id="Hs_saving" class="ui-slider"></div>
                <button id="btn_r_saving" class="ui-button btn_right"></button>
                <input type="text" id="Ti_saving" class="input_text" disabled="disabled" value="0" /> 만원
            </div>

        </div>
        
        <div class="plate_11">

        	<div>
                <div class="label">투자 수익률 (년)</div>
                <button id="btn_l_investRate" class="ui-button btn_left"></button>
                <div id="Hs_investRate" class="ui-slider"></div>
                <button id="btn_r_investRate" class="ui-button btn_right"></button>
                <input type="text" id="Ti_investRate" class="input_text" disabled="disabled" value="5" /> %
            </div>

        	<div>
                <div class="label">물가상승률 (년)</div>
                <button id="btn_l_inflation" class="ui-button btn_left"></button>
                <div id="Hs_inflation" class="ui-slider"></div>
                <button id="btn_r_inflation" class="ui-button btn_right"></button>
                <input type="text" id="Ti_inflation" class="input_text" disabled="disabled" value="1.5" /> %
            </div>

        </div>

        <div class="plate_12">
        
        
        
            <div class="demo-container">
                <div id="placeholder" class="demo-placeholder"></div>
            </div>
        
        
        
        </div>
        
        <div class="plate_s">SOLUTION</div>
        
        <div class="plate_13">

        	<div>
                <div class="label">저축금액을 늘리는 방법 (월)</div>
                <button id="btn_l_savingUp" class="ui-button btn_left"></button>
                <div id="Hs_savingUp" class="ui-slider"></div>
                <button id="btn_r_savingUp" class="ui-button btn_right"></button>
                <input type="text" id="Ti_savingUp" class="input_text" disabled="disabled" value="0" /> 만원
            </div>

        	<div>
                <div class="label">연간 저축 증액률 (년)</div>
                <button id="btn_l_savingUpRate" class="ui-button btn_left"></button>
                <div id="Hs_savingUpRate" class="ui-slider"></div>
                <button id="btn_r_savingUpRate" class="ui-button btn_right"></button>
                <input type="text" id="Ti_savingUpRate" class="input_text" disabled="disabled" value="0" /> %
            </div>

        	<div>
                <div class="label">준비자산을 늘리는 방법</div>
                <button id="btn_l_assetUp" class="ui-button btn_left"></button>
                <div id="Hs_assetUp" class="ui-slider"></div>
                <button id="btn_r_assetUp" class="ui-button btn_right"></button>
                <input type="text" id="Ti_assetUp" class="input_text" disabled="disabled" value="0" /> 만원
            </div>

        </div>
        
    </div>

</body>
</html>
