$(document).ready(function(){var b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t=0,u=0,a=function(){b=$("#Ti_nowAge").val(),c=$("#Ti_retireAge").val(),d=$("#Ti_deathAge").val(),e=$("#Ti_retireMoney").val(),f=$("#Ti_Asset").val(),g=$("#Ti_Saving").val(),h=$("#Ti_savePeriod").val(),i=$("#Ti_pubPension").val(),j=$("#Ti_ratePension").val(),k=$("#Ti_privPension").val(),l=$("#Ti_beforeRate").val(),m=$("#Ti_afterRate").val(),n=$("#Ti_inflation").val(),p=$("#Ti_savingUp").val(),q=$("#Ti_savingUpRate").val(),s=c-b,b=parseInt(b),c=parseInt(c),d=parseInt(d),e=12*parseInt(e),f=100*parseInt(f),g=12*parseInt(g),h=parseInt(h),i=12*parseInt(i),j=parseInt(100*j)/1e4,k=12*parseInt(k),l=parseInt(100*l)/1e4,m=parseInt(100*m)/1e4,n=parseInt(100*n)/1e4,o=0,p=12*parseInt(p),q=parseInt(100*q)/1e4,r=0,t=f+o;var a=[],v=[];for(i=b;i<=d;i++)u=0,i-b<h?(u=i>b?t*(1+l):t,0==q?(u+=g,u+=p):(u+=g*Math.pow(1+q,i-b-1),u+=p*Math.pow(1+q,i-b-1)),t=u,a.push([i,Math.round(t)]),v.push([i,0])):i<c?(t=u=i>b?t*(1+l):t,a.push([i,Math.round(t)]),v.push([i,0])):(u=t*(1+m),u-=e*Math.pow(1+n,i-b-1),i>=65&&(u+=i*Math.pow(1+j,i-b)),u+=k,u+=r,t=u,a.push([i,0]),v.push([i,Math.round(t)]));$.plot("#placeholder",[{data:a,bars:{show:!0,fill:!0}},{data:v,bars:{show:!0}}])};a(),$("#Hs_nowAge").slider({range:"max",min:20,max:80,value:30,slide:function(e,d){d.value<=c?(b=d.value,$("#Ti_nowAge").val(b)):$(this).slider("max",c),a()}}),$("#btn_l_nowAge").click(function(){(b=parseInt($("#Ti_nowAge").val()))>20&&(b-=1),$("#Hs_nowAge").slider("value",b),$("#Ti_nowAge").val(b),a()}),$("#btn_r_nowAge").click(function(){(b=parseInt($("#Ti_nowAge").val()))<c&&(b+=1),$("#Hs_nowAge").slider("value",b),$("#Ti_nowAge").val(b),a()}),$("#Hs_retireAge").slider({range:"max",min:40,max:90,value:60,slide:function(f,e){e.value<=d&&e.value>=b?(c=e.value,$("#Ti_retireAge").val(c)):e.value>d?$(this).slider("max",d):$(this).slider("min",b),a()}}),$("#btn_l_retireAge").click(function(){(c=parseInt($("#Ti_retireAge").val()))>b&&(c-=1),$("#Hs_retireAge").slider("value",c),$("#Ti_retireAge").val(c),a()}),$("#btn_r_retireAge").click(function(){(c=parseInt($("#Ti_retireAge").val()))<d&&(c+=1),$("#Hs_retireAge").slider("value",c),$("#Ti_retireAge").val(c),a()}),$("#Hs_deathAge").slider({range:"max",min:60,max:120,value:90,slide:function(e,b){b.value>=c?(d=b.value,$("#Ti_deathAge").val(d)):$(this).slider("min",c),a()}}),$("#btn_l_deathAge").click(function(){(d=parseInt($("#Ti_deathAge").val()))>c&&(d-=1),$("#Hs_deathAge").slider("value",d),$("#Ti_deathAge").val(d),a()}),$("#btn_r_deathAge").click(function(){(d=parseInt($("#Ti_deathAge").val()))<120&&(d+=1),$("#Hs_deathAge").slider("value",d),$("#Ti_deathAge").val(d),a()}),$("#Hs_retireMoney").slider({range:"max",min:80,max:500,value:200,slide:function(c,b){e=b.value,$("#Ti_retireMoney").val(e),a()}}),$("#btn_l_retireMoney").click(function(){(e=parseInt($("#Ti_retireMoney").val()))>80&&(e-=1),$("#Hs_retireMoney").slider("value",e),$("#Ti_retireMoney").val(e),a()}),$("#btn_r_retireMoney").click(function(){(e=parseInt($("#Ti_retireMoney").val()))<500&&(e+=1),$("#Hs_retireMoney").slider("value",e),$("#Ti_retireMoney").val(e),a()}),$("#Hs_Asset").slider({range:"max",min:0,max:1e3,value:0,slide:function(c,b){Asset=b.value,$("#Ti_Asset").val(Asset),a()}}),$("#btn_l_Asset").click(function(){(Asset=parseInt($("#Ti_Asset").val()))>0&&(Asset-=1),$("#Hs_Asset").slider("value",Asset),$("#Ti_Asset").val(Asset),a()}),$("#btn_r_Asset").click(function(){(Asset=parseInt($("#Ti_Asset").val()))<1e3&&(Asset+=1),$("#Hs_Asset").slider("value",Asset),$("#Ti_Asset").val(Asset),a()}),$("#Hs_Saving").slider({range:"max",min:0,max:500,value:0,slide:function(c,b){Saving=b.value,$("#Ti_Saving").val(Saving),a()}}),$("#btn_l_Saving").click(function(){(Saving=parseInt($("#Ti_Saving").val()))>0&&(Saving-=1),$("#Hs_Saving").slider("value",Saving),$("#Ti_Saving").val(Saving),a()}),$("#btn_r_Saving").click(function(){(Saving=parseInt($("#Ti_Saving").val()))<500&&(Saving+=1),$("#Hs_Saving").slider("value",Saving),$("#Ti_Saving").val(Saving),a()}),$("#Hs_savePeriod").slider({range:"max",min:0,max:60,value:0,slide:function(c,b){b.value<=s?(h=b.value,$("#Ti_savePeriod").val(h)):$(this).slider("max",s),a()}}),$("#btn_l_savePeriod").click(function(){(h=parseInt($("#Ti_savePeriod").val()))>0&&(h-=1),$("#Hs_savePeriod").slider("value",h),$("#Ti_savePeriod").val(h),a()}),$("#btn_r_savePeriod").click(function(){(h=parseInt($("#Ti_savePeriod").val()))<s&&(h+=1),$("#Hs_savePeriod").slider("value",h),$("#Ti_savePeriod").val(h),a()}),$("#Hs_pubPension").slider({range:"max",min:0,max:400,value:0,slide:function(c,b){i=b.value,$("#Ti_pubPension").val(i),a()}}),$("#btn_l_pubPension").click(function(){(i=parseInt($("#Ti_pubPension").val()))>0&&(i-=1),$("#Hs_pubPension").slider("value",i),$("#Ti_pubPension").val(i),a()}),$("#btn_r_pubPension").click(function(){(i=parseInt($("#Ti_pubPension").val()))<400&&(i+=1),$("#Hs_pubPension").slider("value",i),$("#Ti_pubPension").val(i),a()}),$("#Hs_ratePension").slider({range:"max",min:0,max:100,value:25,slide:function(c,b){ratePension=b.value,$("#Ti_ratePension").val(ratePension/10),a()}}),$("#btn_l_ratePension").click(function(){(ratePension=parseInt(10*$("#Ti_ratePension").val()))>0&&(ratePension-=1),$("#Hs_ratePension").slider("value",ratePension),$("#Ti_ratePension").val(ratePension/10),a()}),$("#btn_r_ratePension").click(function(){(ratePension=parseInt(10*$("#Ti_ratePension").val()))<100&&(ratePension+=1),$("#Hs_ratePension").slider("value",ratePension),$("#Ti_ratePension").val(ratePension/10),a()}),$("#Hs_privPension").slider({range:"max",min:0,max:500,value:0,slide:function(c,b){k=b.value,$("#Ti_privPension").val(k),a()}}),$("#btn_l_privPension").click(function(){(k=parseInt($("#Ti_privPension").val()))>0&&(k-=1),$("#Hs_privPension").slider("value",k),$("#Ti_privPension").val(k),a()}),$("#btn_r_privPension").click(function(){(k=parseInt($("#Ti_privPension").val()))<500&&(k+=1),$("#Hs_privPension").slider("value",k),$("#Ti_privPension").val(k),a()}),$("#Hs_inflation").slider({range:"max",min:0,max:100,value:15,slide:function(c,b){n=b.value,$("#Ti_inflation").val(n/10),a()}}),$("#btn_l_inflation").click(function(){(n=parseInt(10*$("#Ti_inflation").val()))>0&&(n-=1),$("#Hs_inflation").slider("value",n),$("#Ti_inflation").val(n/10),a()}),$("#btn_r_inflation").click(function(){(n=parseInt(10*$("#Ti_inflation").val()))<100&&(n+=1),$("#Hs_inflation").slider("value",n),$("#Ti_inflation").val(n/10),a()}),$("#Hs_beforeRate").slider({range:"max",min:0,max:500,value:50,slide:function(c,b){l=b.value,$("#Ti_beforeRate").val(l/10),a()}}),$("#btn_l_beforeRate").click(function(){(l=parseInt(10*$("#Ti_beforeRate").val()))>0&&(l-=1),$("#Hs_beforeRate").slider("value",l),$("#Ti_beforeRate").val(l/10),a()}),$("#btn_r_beforeRate").click(function(){(l=parseInt(10*$("#Ti_beforeRate").val()))<500&&(l+=1),$("#Hs_beforeRate").slider("value",l),$("#Ti_beforeRate").val(l/10),a()}),$("#Hs_afterRate").slider({range:"max",min:0,max:200,value:35,slide:function(c,b){m=b.value,$("#Ti_afterRate").val(m/10),a()}}),$("#btn_l_afterRate").click(function(){(m=parseInt(10*$("#Ti_afterRate").val()))>0&&(m-=1),$("#Hs_afterRate").slider("value",m),$("#Ti_afterRate").val(m/10),a()}),$("#btn_r_afterRate").click(function(){(m=parseInt(10*$("#Ti_afterRate").val()))<200&&(m+=1),$("#Hs_afterRate").slider("value",m),$("#Ti_afterRate").val(m/10),a()}),$("#Hs_savingUp").slider({range:"max",min:0,max:1e3,value:0,slide:function(c,b){p=b.value,$("#Ti_savingUp").val(p),a()}}),$("#btn_l_savingUp").click(function(){(p=parseInt($("#Ti_savingUp").val()))>0&&(p-=1),$("#Hs_savingUp").slider("value",p),$("#Ti_savingUp").val(p),a()}),$("#btn_r_savingUp").click(function(){(p=parseInt($("#Ti_savingUp").val()))<1e3&&(p+=1),$("#Hs_savingUp").slider("value",p),$("#Ti_savingUp").val(p),a()}),$("#Hs_savingUpRate").slider({range:"max",min:0,max:100,value:0,slide:function(c,b){q=b.value,$("#Ti_savingUpRate").val(q),a()}}),$("#btn_l_savingUpRate").click(function(){(q=parseInt($("#Ti_savingUpRate").val()))>0&&(q-=1),$("#Hs_savingUpRate").slider("value",q),$("#Ti_savingUpRate").val(q),a()}),$("#btn_r_savingUpRate").click(function(){(q=parseInt($("#Ti_savingUpRate").val()))<100&&(q+=1),$("#Hs_savingUpRate").slider("value",q),$("#Ti_savingUpRate").val(q),a()}),$(".ui-button.btn_left").button({icon:"ui-icon-arrow-1-w",showLabel:!1}),$(".ui-button.btn_right").button({icon:"ui-icon-arrow-1-e",showLabel:!1})})