// <script language="javascript" type="text/javascript">
function validar(){
	var pontos = 0;
	var mensagem="";
	var q1 = form1.SO1.value;
	var q2 = form1.SO2.value;
	var q3 = form1.SO3.value;
	var q4 = form1.SO4.value;
	var q5 = form1.SO5.value;
	if(q1=="b"){
		pontos++;
		mensagem+= "\nAcertou a Questão 1.";
	}
	if(q2=="c"){
		mensagem+= "\nAcertou a Questão 2."
		pontos++;
	}
	if(q3=="a"){
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
