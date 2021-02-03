<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IsiLav - Gestione Clienti</title>
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
			<h4>Gestione Clienti</h4>
			<table class="table">
				<thead>
					<tr>
						<th>Email</th>
						<th>Nome e Cognome</th>
						<th>Nome Attivit�</th>
						<th>P.IVA/Codice Fiscale</th>
					</tr>
				</thead>
				<tbody>
					<tr >
						<td>john@example.com</td>
						<td>John Doe</td>
						<td>Hotel Ariston</td>
						<td>JSFHIEEFJ45</td>
						<td><a href="modificaDatiCliente.jsp"> <i
								style="color: #3E4349; font-size: 1.5em;" class="fas fa-edit"></i></a>
						<td>
						<td>
							<div class="row">
								<div class="col-sm-12" style="padding-bottom: 5px; ">
									<button type="button" onclick="location.href='stock.jsp'"
										style="background-color: #70D0AE; border-color: #70D0AE;width: 120px;"
										class="btn btn-primary">STOCK</button>

								</div>
								<div class="col-sm-12" style="padding-bottom: 5px; ">
									<button type="button" onclick="location.href='pagamenti.jsp'"
										style="background-color: #70D0AE; border-color: #70D0AE; width: 120px; "
										class="btn btn-primary">PAGAMENTI</button>
								</div>
								<div class="col-sm-12">
									<button type="button" onclick="location.href='movimenti.jsp'"
										style="background-color: #70D0AE; border-color: #70D0AE;width: 120px;"
										class="btn btn-primary">MOVIMENTI</button>
								</div>
							</div>
						<td>
					</tr>
					<tr >
						<td>mary@example.com</td>
						<td>Mary Moe</td>
						<td>B&B La Conchiglia</td>
						<td>MSDH78RUBGGT6</td>
						<td><a href="modificaDatiCliente.jsp"><i style="color: #3E4349; font-size: 1.5em;"
							class="fas fa-edit"></i></a>
						<td>
							<td>
							<div class="row">
								<div class="col-sm-12" style="padding-bottom: 5px; ">
									<button type="button" onclick="location.href='stock.jsp'"
										style="background-color: #70D0AE; border-color: #70D0AE;width: 120px;"
										class="btn btn-primary">STOCK</button>

								</div>
								<div class="col-sm-12" style="padding-bottom: 5px; ">
									<button type="button" onclick="location.href='pagamenti.jsp'"
										style="background-color: #70D0AE; border-color: #70D0AE; width: 120px; "
										class="btn btn-primary">PAGAMENTI</button>
								</div>
								<div class="col-sm-12">
									<button type="button" onclick="location.href='movimenti.jsp'"
										style="background-color: #70D0AE; border-color: #70D0AE;width: 120px;"
										class="btn btn-primary">MOVIMENTI</button>
								</div>
							</div>
						<td>
					</tr>
					<tr>
						<td>july@example.com</td>
						<td>July Dooley</td>
						<td>Novotel</td>
						<td>JUFBRU486YHH7</td>
						<td><a href="modificaDatiCliente.jsp"><i style="color: #3E4349; font-size: 1.5em;"
							class="fas fa-edit"></i></a>
						<td>
							<td>
							<div class="row">
								<div class="col-sm-12" style="padding-bottom: 5px; ">
									<button type="button" onclick="location.href='stock.jsp'"
										style="background-color: #70D0AE; border-color: #70D0AE;width: 120px;"
										class="btn btn-primary">STOCK</button>

								</div>
								<div class="col-sm-12" style="padding-bottom: 5px; ">
									<button type="button" onclick="location.href='pagamenti.jsp'"
										style="background-color: #70D0AE; border-color: #70D0AE; width: 120px; "
										class="btn btn-primary">PAGAMENTI</button>
								</div>
								<div class="col-sm-12">
									<button type="button" onclick="location.href='movimenti.jsp'"
										style="background-color: #70D0AE; border-color: #70D0AE;width: 120px;"
										class="btn btn-primary">MOVIMENTI</button>
								</div>
							</div>
						<td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>