<?php
// Sessão
session_start();
// Conexão
require_once 'db_connect.php';
// Clear
function clear($input) {
	global $connect;
	// sql
	$var = mysqli_escape_string($connect, $input);
	// xss
	$var = htmlspecialchars($var);
	return $var;
}

if(isset($_POST['btn-cadastrar'])):
	$nome = clear($_POST['nome']);
	$url_site = clear($_POST['url_site']);
	$url_admin = clear($_POST['url_admin']);
	$user_admin = clear($_POST['user_admin']);
	$pass_admin = clear($_POST['pass_admin']);
	$url_ftp = clear($_POST['url_ftp']);
	$user_ftp = clear($_POST['user_ftp']);
	$pass_ftp = clear($_POST['pass_ftp']);

	$sql = "INSERT INTO sites (nome, url_site, url_admin, user_admin, pass_admin,
			url_ftp, user_ftp, pass_ftp) VALUES ('$nome', '$url_site', '$url_admin', '$user_admin',
			 '$pass_admin', '$url_ftp', '$user_ftp', '$pass_ftp')";

	if(mysqli_query($connect, $sql)):
		$_SESSION['mensagem'] = "Cadastrado com sucesso!";
		header('Location: ../index.php');
	else:
		$_SESSION['mensagem'] = "Erro ao cadastrar";
		header('Location: ../index.php');
	endif;
endif;