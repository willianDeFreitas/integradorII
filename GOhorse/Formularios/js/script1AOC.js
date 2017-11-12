// <script language="javascript" type="text/javascript">
function validar(){
	var pontos = 0;
	var mensagem="";
	var q1 = form1.QAOC1.value;
	var q2 = form1.QAOC2.value;
	var q3 = form1.QAOC3.value;
	var q4 = form1.QAOC4.value;
	var q5 = form1.QAOC5.value;
	if(q1=="d"){
		pontos++;
		mensagem+= "\nAcertou a Questão 1.";
	}
	if(q2=="c"){
		mensagem+= "\nAcertou a Questão 2."
		pontos++;
	}
	if(q3=="b"){
		mensagem+= "\nAcertou a Questão 3."
		pontos++;
	}
	if(q4=="d"){
		mensagem+= "\nAcertou a Questão 4."
		pontos++;
	}
	if(q5=="a"){
		mensagem+= "\nAcertou a Questão 5."
		pontos++;
	}
	alert("Acertos: "+pontos+ mensagem);
	
}	

