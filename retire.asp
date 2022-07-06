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
	<script src="/js/retire.js"></script>
    
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1119726588512865"
     crossorigin="anonymous"></script>
</head>

<body>

	<div class="smart_sub">
    
        <div class="sub_title">
			<a href="/home.asp"><img src="images/btn_back.png" class="btn_back" /></a>
        	은퇴설계
        </div>
        
        <div class="plate_1">

        	<div>
                <div class="label">현재나이</div>
                <button id="btn_l_nowAge" class="ui-button btn_left"></button>
                <div id="Hs_nowAge" class="ui-slider"></div>
                <button id="btn_r_nowAge" class="ui-button btn_right"></button>
                <input type="text" id="Ti_nowAge" class="input_text" disabled="disabled" value="30" /> 세
            </div>

        	<div>
                <div class="label">희망은퇴시점</div>
                <button id="btn_l_retireAge" class="ui-button btn_left">-</button>
                <div id="Hs_retireAge" class="ui-slider"></div>
                <button id="btn_r_retireAge" class="ui-button btn_right">+</button>
                <input type="text" id="Ti_retireAge" class="input_text" disabled="disabled" value="60" /> 세
            </div>

        	<div>
                <div class="label">기대수명</div>
                <button id="btn_l_deathAge" class="ui-button btn_left"></button>
                <div id="Hs_deathAge" class="ui-slider"></div>
                <button id="btn_r_deathAge" class="ui-button btn_right"></button>
                <input type="text" id="Ti_deathAge" class="input_text" disabled="disabled" value="90" /> 세
            </div>

        	<div>
                <div class="label">은퇴 후 예상되는 생활비 (월)</div>
                <button id="btn_l_retireMoney" class="ui-button btn_left"></button>
                <div id="Hs_retireMoney" class="ui-slider"></div>
                <button id="btn_r_retireMoney" class="ui-button btn_right"></button>
                <input type="text" id="Ti_retireMoney" class="input_text" disabled="disabled" value="200" /> 만원
            </div>

        	<div>
                <div class="label">은퇴만을 위해 준비해 놓은 자산</div>
                <button id="btn_l_Asset" class="ui-button btn_left"></button>
                <div id="Hs_Asset" class="ui-slider"></div>
                <button id="btn_r_Asset" class="ui-button btn_right"></button>
                <input type="text" id="Ti_Asset" class="input_text" disabled="disabled" value="0" /> 백만
            </div>

        	<div>
                <div class="label">은퇴만을 위한 저축금액 (월)</div>
                <button id="btn_l_Saving" class="ui-button btn_left"></button>
                <div id="Hs_Saving" class="ui-slider"></div>
                <button id="btn_r_Saving" class="ui-button btn_right"></button>
                <input type="text" id="Ti_Saving" class="input_text" disabled="disabled" value="0" /> 만원
            </div>

        	<div>
                <div class="label">은퇴만을 위한 저축기간</div>
                <button id="btn_l_savePeriod" class="ui-button btn_left"></button>
                <div id="Hs_savePeriod" class="ui-slider"></div>
                <button id="btn_r_savePeriod" class="ui-button btn_right"></button>
                <input type="text" id="Ti_savePeriod" class="input_text" disabled="disabled" value="0" /> 년
            </div>

        </div>
        
        <div class="plate_2">

        	<div>
                <div class="label">공적연금(국민,공무원 등) 수령액 (월)</div>
                <button id="btn_l_pubPension" class="ui-button btn_left"></button>
                <div id="Hs_pubPension" class="ui-slider"></div>
                <button id="btn_r_pubPension" class="ui-button btn_right"></button>
                <input type="text" id="Ti_pubPension" class="input_text" disabled="disabled" value="0" /> 만원
            </div>

        	<div>
                <div class="label">공적연금 상승률 (년)</div>
                <button id="btn_l_ratePension" class="ui-button btn_left"></button>
                <div id="Hs_ratePension" class="ui-slider"></div>
                <button id="btn_r_ratePension" class="ui-button btn_right"></button>
                <input type="text" id="Ti_ratePension" class="input_text" disabled="disabled" value="2.5" /> %
            </div>

        	<div>
                <div class="label">개인연금 수령액 (월)</div>
                <button id="btn_l_privPension" class="ui-button btn_left"></button>
                <div id="Hs_privPension" class="ui-slider"></div>
                <button id="btn_r_privPension" class="ui-button btn_right"></button>
                <input type="text" id="Ti_privPension" class="input_text" disabled="disabled" value="0" /> 만원
            </div>

        	<div>
                <div class="label">물가상승률 (년)</div>
                <button id="btn_l_inflation" class="ui-button btn_left"></button>
                <div id="Hs_inflation" class="ui-slider"></div>
                <button id="btn_r_inflation" class="ui-button btn_right"></button>
                <input type="text" id="Ti_inflation" class="input_text" disabled="disabled" value="1.5" /> %
            </div>

        </div>

        <div class="plate_3">
        
        
        
		<div class="demo-container">
			<div id="placeholder" class="demo-placeholder"></div>
		</div>
        
        
        
        </div>
        
        <div class="plate_s">SOLUTION</div>
        
        <div class="plate_4">

        	<div>
                <div class="label">저축금액을 늘리는 방법 (월)</div>
                <button id="btn_l_savingUp" class="ui-button btn_left"></button>
                <div id="Hs_savingUp" class="ui-slider"></div>
                <button id="btn_r_savingUp" class="ui-button btn_right"></button>
                <input type="text" id="Ti_savingUp" class="input_text" disabled="disabled" value="0" /> 만원
            </div>

        	<div>
                <div class="label">연간 저축 증액률 (년) </div>
                <button id="btn_l_savingUpRate" class="ui-button btn_left"></button>
                <div id="Hs_savingUpRate" class="ui-slider"></div>
                <button id="btn_r_savingUpRate" class="ui-button btn_right"></button>
                <input type="text" id="Ti_savingUpRate" class="input_text" disabled="disabled" value="0" /> %
            </div>

        </div>

        <div class="plate_5">

        	<div>
                <div class="label">은퇴 전 수익률 (년)</div>
                <button id="btn_l_beforeRate" class="ui-button btn_left"></button>
                <div id="Hs_beforeRate" class="ui-slider"></div>
                <button id="btn_r_beforeRate" class="ui-button btn_right"></button>
                <input type="text" id="Ti_beforeRate" class="input_text" disabled="disabled" value="5" /> %
            </div>

        	<div>
                <div class="label">은퇴 후 수익률 (년)</div>
                <button id="btn_l_afterRate" class="ui-button btn_left"></button>
                <div id="Hs_afterRate" class="ui-slider"></div>
                <button id="btn_r_afterRate" class="ui-button btn_right"></button>
                <input type="text" id="Ti_afterRate" class="input_text" disabled="disabled" value="3.5" /> %
            </div>

        </div>
        
    </div>

</body>
</html>
