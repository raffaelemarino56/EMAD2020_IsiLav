<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IsiLav - Storico Pagamenti</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/body.css">


</head>
<body>

	<div class="wrapper">

		<!-- Sidebar -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<div class="row">
					<img src="img/icona-bianca.png"
						style="width: 38px; height: 38px; float: left;" />
					<h2 style="margin-left: 5px;">IsiLav</h2>
				</div>

			</div>
			<div class="row">
				<div class="col-sm-12">
					<a href="iscrizioni.jsp"> <i class="fas fa-user-plus"
						style="margin-right: 10px"></i> Richieste di iscrizione <span
						class="badge badge-danger">3</span>
					</a>
				</div>
				<div class="col-sm-12">
					<a href="gestioneClienti.jsp"><i class="far fa-address-book"
						style="margin-right: 20px"></i> Gestione clienti</a>
				</div>
				<div class="col-sm-12">
					<a href="elencoOrRes.js"><i class="fas fa-list-ul"
						style="margin-right: 20px"></i>Elenco ordini e resi</a>
				</div>
				<div class="col-sm-12">
					<a href="gestioneHub.jsp"><i class="fas fa-map-marker-alt"
						style="margin-right: 20px"></i>Gestione hub</a>
				</div>
				<div class="col-sm-12">
					<a href="visualizzaPercorsi.jsp"><i class="fas fa-truck"
						style="margin-right: 20px"></i>Visualizza percorsi</a>
				</div>
				<div class="col-sm-12">
					<a href="gestioneCatalogo.jsp"><i class="fas fa-edit"
						style="margin-right: 20px"></i>Gestione catalogo</a>
				</div>

				<div class="col-sm-12"
					style="position: fixed; bottom: 0; padding-bottom: 20px; max-width: 330px;">
					<a href="index.html"><i class="fas fa-sign-out-alt"
						style="margin-right: 20px"></i>Logout</a>
				</div>
			</div>
		</nav>
		<div class="MyContainer">
			<div class="row" style="margin-bottom:20px;">
				<div class="col-sm-5">
					<h4>
						Hotel La Conchiglia <br> di Giovanni Rossi
					</h4>
				</div>
				<div class="col-sm-2">
					<h4>-</h4>
				</div>
				<div class="col-sm-5">
					<h4>Storico pagamenti</h4>
				</div>
			</div>

			<table class="table" style="width: 700px;">
				<thead>
					<tr>
						<th>Data</th>
						<th>N&deg; ordine</th>
						<th>Tipo</th>
						<th>Totale</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>20/12/2019</td>
						<td>3</td>
						<td>Ritardo</td>
						<td>20,40 &euro;</td>

					</tr>
					<tr>
						<td>18/09/2020</td>
						<td>2</td>
						<td>Ordine</td>
						<td>36,18 &euro;</td>

					</tr>
					<tr>
						<td>30/08/2020</td>
						<td>1</td>
						<td>Reso</td>
						<td>20,00 &euro;</td>

					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>