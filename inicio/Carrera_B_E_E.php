<?php
	require_once('../conexion/conexion.php');

	//Consulta principal para la busqueda y llenado tabla
	$sql = 'SELECT * FROM carrera WHERE nombre_carrera LIKE :search ORDER by nombre_carrera ASC';
	$search = isset($_GET['nombre_carrera'])? $_GET['nombre_carrera']: '';
	$arr[':search']= '%' . $search . '%';
	$statement = $pdo->prepare($sql);
	$statement->execute($arr);
	$results = $statement->fetchAll();

	$show_form = FALSE;


	if($_POST) {

		//TODO:UPDATE ARTICLE
		$sql_update_actividad = 'UPDATE carrera SET clave_carrera = ?, nombre_carrera = ? WHERE clave_carrera = ?';

		$clave = isset($_GET['clave_carrera']) ? $_GET['clave_carrera']: '';
		$clave2 = isset($_POST['clave_carrera_2']) ? $_POST['clave_carrera_2']: '';
		$nombreactividad= isset($_POST['nombre_carrera']) ? $_POST['nombre_carrera']: '';
	  	$statement_update_details = $pdo->prepare($sql_update_actividad);
	  	$statement_update_details->execute(array($clave2,$nombreactividad,$clave));
	  	header('Location: Carrera_B_E_E.php');
	}

		if(isset( $_GET['clave_carrera'] ) ) {

			//TODO: GET DETAILS
			$show_form = true;


			$sql_update = 'SELECT * from carrera WHERE clave_carrera = ?';
			$clave = isset( $_GET['clave_carrera']) ? $_GET['clave_carrera'] : 0;
			$statement_update = $pdo->prepare($sql_update);
			$statement_update->execute(array($clave));
			$result_details = $statement_update->fetchAll();
			$rs_campo = $result_details[0];
		}

 ?>

<title>B_E_E_Carrera</title>

<?php
 	include('../extend/header.php');
?>


 <div class="container">
	<div class="row">
		<div class="col s12">
			<form method="get">
      			<h2 class="card-title">Buscar Carrera</h2>
        		<div class="input-field col s12">
         		<input type="text" id="autocomplete-input" name="nombre_carrera" class="autocomplete">
         		<label for="autocomplete-input">Ingrese el Nombre de la Carrera</label>
         			<input class="waves-effect waves-light btn cyan" type="submit" value="Buscar" >
       			</div>
       		</form>
		</div>
	</div>
</div>

<?php
	if ($show_form) {
?>
<div class="container ">
	<div class="row ">
		<div class="col s12">
		<h3>Modificar Carrera</h3>
		<form method="post">
			<div class="row">
				<div class="input-field col s12">
					<input value="<?php echo $rs_campo['clave_carrera'] ?>" type="text" name="clave_carrera_2">
				</div>
			</div>
			<div class="row">
				<div class="input-field col s5">
					<input value="<?php echo $rs_campo['nombre_carrera'] ?>" type="text" name="nombre_carrera">
				</div>
			</div>
			<input class="btn waves-effect waves-light" type="submit" value="Modificar">
			<input class="btn waves-effect waves-light" type="submit" value = "Cancelar" onClick ="Carrera_B_E_E.php">

		</form>
		</div>
	</div>
</div>

<?php
	}
 ?>
 <br>
 <div class="container">
	<div class="row">
		<div class="col s12">
			<h3 >Carreras</h3>

			<table class="striped">
				<thead>
					<tr>
					   	<th class="center">Clave</th>
					   	<th class="center">Nombre de la carrera</th>
					    <th class="center" colspan="2">Acción</th>
					</tr>
				</thead>

				<tbody>
					<?php
					   	foreach($results as $rs2) {
					?>
						<tr>
						 	<td class="center"><?php echo $rs2['clave_carrera']?></td>
							<td class="center"><?php echo $rs2['nombre_carrera']?></td>

							<td class="center">
								<a class="btn waves-effect waves-light cyan lighten-1" href="Carrera_B_E_E.php?clave_carrera=<?php echo $rs2['clave_carrera']; ?>">Editar</a>
							</td>

							<td  class="center">
								<a class="btn waves-effect waves-light red" onclick="Eliminar_Carrera('<?php echo $rs2["clave_carrera"]; ?>')" href="#">ELIMINAR</a>
							</td>
						</tr>

					<?php
						}
					?>
				</tbody>
			</table>
		</div>
	</div>
</div>


<?php
  include('../extend/footer.php')
?>
