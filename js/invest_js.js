$(function(){var a,b,c,d,e,f,g,h,i,j=function(){h=0,0!=a&&0!=b&&0!=c&&0!=d&&0!=e&&0!=f&&0!=g?(h=(h=a+b+c+d+e+f+g)/32*100)>0&&h<=25?(alert(i="\uC548\uC815\uD615"),$("#invtest_result").attr("src","images/invtest1.png")):h>20&&h<=40?(alert(i="\uC548\uC815\uCD94\uAD6C\uD615"),$("#invtest_result").attr("src","images/invtest2.png")):h>40&&h<=60?(alert(i="\uC704\uD5D8\uC911\uB9BD\uD615"),$("#invtest_result").attr("src","images/invtest3.png")):h>60&&h<=80?(alert(i="\uC801\uADF9\uD22C\uC790\uD615"),$("#invtest_result").attr("src","images/invtest4.png")):h>80&&h<=100&&(alert(i="\uACF5\uACA9\uD22C\uC790\uD615"),$("#invtest_result").attr("src","images/invtest5.png")):alert("error")};$("#btn_result").click(function(){a=$('input[name="q1"]:checked').val(),b=$('input[name="q2"]:checked').val(),c=$('input[name="q3"]:checked').val(),d=$('input[name="q4"]:checked').val(),e=$('input[name="q5"]:checked').val(),f=$('input[name="q6"]:checked').val(),g=$('input[name="q7"]:checked').val(),void 0==a|| void 0==b|| void 0==c|| void 0==d|| void 0==e|| void 0==f|| void 0==g?alert("\uC124\uBB38\uC744 \uBAA8\uB450 \uC644\uC131\uD55C \uD6C4\uC5D0 \uACB0\uACFC\uB97C \uD655\uC778\uD558\uC138\uC694"):(a=parseInt(a),b=parseInt(b),c=parseInt(c),d=parseInt(d),e=parseInt(e),f=parseInt(f),g=parseInt(g),j())}),$("input").click(function(){$("#invtest_result").attr("src","")})})