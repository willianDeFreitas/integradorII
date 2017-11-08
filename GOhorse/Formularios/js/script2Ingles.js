// <script language="javascript" type="text/javascript">
function validar(){
	var pontos = 0;
	var mensagem="";
	var q1 = form1.ING1.value;
	var q2 = form1.ING2.value;
	var q3 = form1.ING3.value;
	var q4 = form1.ING4.value;
	var q5 = form1.ING5.value;
	if(q1=="b"){
		pontos++;
		mensagem+= "\nAcertou a Questão 1.";
	}
	if(q2=="b"){
		mensagem+= "\nAcertou a Questão 2."
		pontos++;
	}
	if(q3=="c"){
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

