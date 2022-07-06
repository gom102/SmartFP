$(function () {
		var quest1;
		var quest2;
		var quest3;
		var quest4;
		var quest5;
		var quest6;
		var quest7;
		var totalQuest;
		var result;
		var invTesting = function () {
			totalQuest = 0;
			if (quest1!=0 && quest2!=0 && quest3!=0 && quest4!=0 && quest5!=0 && quest6!=0 && quest7!=0) {
				totalQuest = quest1 + quest2 + quest3 + quest4 + quest5 + quest6 + quest7;
				totalQuest = totalQuest / 32 * 100;
				if (totalQuest > 0 && totalQuest <= 25) {
					result = "안정형"
					alert(result);
					$("#invtest_result").attr("src","images/invtest1.png");
				} else if (totalQuest > 20 && totalQuest <= 40) {
					result = "안정추구형"
					alert(result);
					$("#invtest_result").attr("src","images/invtest2.png");
				} else if (totalQuest > 40 && totalQuest <= 60) {
					result = "위험중립형"
					alert(result);
					$("#invtest_result").attr("src","images/invtest3.png");
				} else if (totalQuest > 60 && totalQuest <= 80) {
					result = "적극투자형"
					alert(result);
					$("#invtest_result").attr("src","images/invtest4.png");
				} else if (totalQuest > 80 && totalQuest <= 100) {
					result = "공격투자형"
					alert(result);
					$("#invtest_result").attr("src","images/invtest5.png");
				}
			} else {
				alert('error');
			}
		}
		$("#btn_result").click(function () {
			quest1 = $('input[name="q1"]:checked').val();
			quest2 = $('input[name="q2"]:checked').val();
			quest3 = $('input[name="q3"]:checked').val();
			quest4 = $('input[name="q4"]:checked').val();
			quest5 = $('input[name="q5"]:checked').val();
			quest6 = $('input[name="q6"]:checked').val();
			quest7 = $('input[name="q7"]:checked').val();
			if (quest1==undefined || quest2==undefined || quest3==undefined || quest4==undefined || quest5==undefined || quest6==undefined || quest7==undefined) {
				alert('설문을 모두 완성한 후에 결과를 확인하세요');
			} else {
				quest1 = parseInt(quest1);
				quest2 = parseInt(quest2);
				quest3 = parseInt(quest3);
				quest4 = parseInt(quest4);
				quest5 = parseInt(quest5);
				quest6 = parseInt(quest6);
				quest7 = parseInt(quest7);
				invTesting();
			}
		});
		$("input").click(function(){
			$("#invtest_result").attr("src","");
		});
});