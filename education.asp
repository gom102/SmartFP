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
	<script src="/js/education.js"></script>
    
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1119726588512865"
     crossorigin="anonymous"></script>
</head>

<body>

	<div class="smart_sub">
    
        <div class="sub_title">
			<a href="/home.asp"><img src="images/btn_back.png" class="btn_back" /></a>
        	자녀교육자금설계
        </div>
        
        <div class="plate_6">

        	<div>
                <div class="label">자녀1의 현재나이</div>
                <button id="btn_l_childAge1" class="ui-button btn_left"></button>
                <div id="Hs_childAge1" class="ui-slider"></div>
                <button id="btn_r_childAge1" class="ui-button btn_right"></button>
                <input type="text" id="Ti_childAge1" class="input_text" disabled="disabled" value="7" /> 세
            </div>

        	<div>
                <div class="label">자녀2의 현재나이</div>
                <button id="btn_l_childAge2" class="ui-button btn_left"></button>
                <div id="Hs_childAge2" class="ui-slider"></div>
                <button id="btn_r_childAge2" class="ui-button btn_right"></button>
                <input type="text" id="Ti_childAge2" class="input_text" disabled="disabled" value="0" /> 세
            </div>

        	<div>
                <div class="label">자녀3의 현재나이</div>
                <button id="btn_l_childAge3" class="ui-button btn_left"></button>
                <div id="Hs_childAge3" class="ui-slider"></div>
                <button id="btn_r_childAge3" class="ui-button btn_right"></button>
                <input type="text" id="Ti_childAge3" class="input_text" disabled="disabled" value="0" /> 세
            </div>

        	<div>
                <div class="label">자녀4의 현재나이</div>
                <button id="btn_l_childAge4" class="ui-button btn_left"></button>
                <div id="Hs_childAge4" class="ui-slider"></div>
                <button id="btn_r_childAge4" class="ui-button btn_right"></button>
                <input type="text" id="Ti_childAge4" class="input_text" disabled="disabled" value="0" /> 세
            </div>

        	<div>
                <div class="label">대학등록금(년)</div>
                <button id="btn_l_univMoney" class="ui-button btn_left"></button>
                <div id="Hs_univMoney" class="ui-slider"></div>
                <button id="btn_r_univMoney" class="ui-button btn_right"></button>
                <input type="text" id="Ti_univMoney" class="input_text" disabled="disabled" value="1000" /> 만원
            </div>

        	<div>
                <div class="label">대학교육기간</div>
                <button id="btn_l_univYears" class="ui-button btn_left"></button>
                <div id="Hs_univYears" class="ui-slider"></div>
                <button id="btn_r_univYears" class="ui-button btn_right"></button>
                <input type="text" id="Ti_univYears" class="input_text" disabled="disabled" value="4" /> 년
            </div>

        	<div>
                <div class="label">대학교육을 위해 준비해 놓은 자산</div>
                <button id="btn_l_Asset" class="ui-button btn_left"></button>
                <div id="Hs_Asset" class="ui-slider"></div>
                <button id="btn_r_Asset" class="ui-button btn_right"></button>
                <input type="text" id="Ti_Asset" class="input_text" disabled="disabled" value="0" /> 만원
            </div>

        	<div>
                <div class="label">대학교육을 위한 저축 및 투자(월)</div>
                <button id="btn_l_saving" class="ui-button btn_left"></button>
                <div id="Hs_saving" class="ui-slider"></div>
                <button id="btn_r_saving" class="ui-button btn_right"></button>
                <input type="text" id="Ti_saving" class="input_text" disabled="disabled" value="0" /> 만원
            </div>

        </div>
        
        <div class="plate_7">

        	<div>
                <div class="label">투자 수익률 (년)</div>
                <button id="btn_l_returnRate" class="ui-button btn_left"></button>
                <div id="Hs_returnRate" class="ui-slider"></div>
                <button id="btn_r_returnRate" class="ui-button btn_right"></button>
                <input type="text" id="Ti_returnRate" class="input_text" disabled="disabled" value="5" /> %
            </div>

        	<div>
                <div class="label">등록금인상률 (년)</div>
                <button id="btn_l_univInflation" class="ui-button btn_left"></button>
                <div id="Hs_univInflation" class="ui-slider"></div>
                <button id="btn_r_univInflation" class="ui-button btn_right"></button>
                <input type="text" id="Ti_univInflation" class="input_text" disabled="disabled" value="8" /> %
            </div>

        </div>

        <div class="plate_8">
        
        
        
            <div class="demo-container">
                <div id="placeholder" class="demo-placeholder"></div>
            </div>
        
        
        
        </div>
        
        <div class="plate_s">SOLUTION</div>
        
        <div class="plate_9">

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

			<p>
            	 ※ 참고: 저축기간은 막내가 대학입학하는 시점으로 가정합니다.
            </p>

        </div>
        
    </div>

</body>
</html>
