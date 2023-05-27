<?php
$servername = "127.0.0.1";
$database = "doacoes";
$username = "root";
$password = "";
$conn = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
//echo"Connected successfully";
//mysqli_close($conn);


if(isset($_POST["nome"])){
	//echo "caiu aqui";
	$nome = $_POST["nome"];
	$email = $_POST["email"];
	$telefone = $_POST["telefone"];
	//echo $email;
	$sql = "INSERT INTO cadastro (nome, email, telefone) VALUES ('".$nome."', '".$email."', '".$telefone."') ";
	//echo $sql;
	$conn->query($sql);
	header("location: index.html");
}

if(isset($_POST["quero_doar"])){
	@$roupas_infantil = $_POST["roupa_infantil"];
	@$roupas_adulto = $_POST["roupa_adulto"];
	@$alimentos = $_POST["alimentos"];
	@$moveis = $_POST["moveis"];
	@$medicamentos = $_POST["medicamentos"];
	@$produtos_gerais = $_POST["produtos_gerais"];

 $sql = "INSERT INTO quero_doar (roupas_e_calcados_infantil,roupas_e_calcados_adulto, alimentos, moveis_usados, medicamentos, produtos_em_geral) VALUES ('".$roupas_infantil."','".$roupas_adulto."', '".$alimentos."', '".$moveis."', '".$medicamentos."', '".$produtos_gerais."')";
     
     //echo $sql;
 //echo $produtos_gerais;
     
    $conn->query($sql);
    header("location: index.html");

}

if(isset($_POST["quero_receber"])){
	@$roupa_infantil = $_POST["roupa_infantil"];
	@$roupas_adulto = $_POST["roupas_adulto"];
	@$alimentos = $_POST["alimentos"];
	@$moveis = $_POST["moveis"];
	@$medicamentos = $_POST["medicamentos"];
	@$produtos_gerais = $_POST["produtos_gerais"];

$sql = "INSERT INTO quero_receber (roupas_e_calcados_infantil, roupas_e_calcados_adulto, alimentos, moveis_usados, medicamentos, produtos_em_geral) VALUES('".$roupa_infantil."','".$roupas_adulto."', '".$alimentos."', '".$moveis."' , '".$medicamentos."','".$produtos_gerais."')";

    $conn->query($sql);
    header("location: index.html");


}







 ?>


