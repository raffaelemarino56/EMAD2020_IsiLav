
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.text.DateFormat"%>
<%@page import=" java.text.SimpleDateFormat"%>
<%@page import="Bean.Cliente"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IsiLav - Modifica Dati Cliente</title>
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


<script type="text/javascript">

$(document).ready(
		function() {
			
			premium();
			
			$("#premiumcheck").click(function(){
				
				if($("#premiumcheck").is(':checked')){
					
					 
					  $('#settimanePremium').prop( "disabled", false );
					  $('#settimanePremium').show();// checked
				}else{
					
					
					 $('#settimanePremium').prop( "disabled", true );
					 $('#settimanePremium').hide();// unchecked
				}
			});
		});

function premium()
{
  if (document.getElementById('premiumcheck').checked) 
  {
	  document.getElementById('settimanePremium').disabled = false;
	 
	  
  } else {
	  document.getElementById('settimanePremium').disabled = true;
	 
	  
  }
}
</script>

</head>
<body>

	<div class="wrapper">
<%int sizeClienti=(Integer)session.getAttribute("sizeClienti");%>
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
					<a href="Iscrizioni"> <i class="fas fa-user-plus"
						style="margin-right: 10px"></i> Richieste di iscrizione 
						<%if(sizeClienti==0){ }else{ %>
						<span  class="badge badge-danger"><%=sizeClienti %></span>
						<%} %>
					</a>
				</div>
				<div class="col-sm-12">
					<a href="VisualizzaClienti"><i class="far fa-address-book"
						style="margin-right: 20px"></i> Gestione clienti</a>
				</div>
				<div class="col-sm-12">
					<a href="VisualizzaElencoOR"><i class="fas fa-list-ul"
						style="margin-right: 20px"></i>Elenco ordini e resi</a>
				</div>
				<div class="col-sm-12">
					<a href="VisualizzaHub"><i class="fas fa-map-marker-alt"
						style="margin-right: 20px"></i>Gestione hub</a>
				</div>
				<div class="col-sm-12">
					<a href="VisualizzaPercorsi"><i class="fas fa-truck" style="margin-right: 20px"></i>Visualizza
						percorsi</a>
				</div>
				<div class="col-sm-12">
					<a href="VisualizzaCatalogo"><i class="fas fa-edit" style="margin-right: 20px"></i>Gestione
						catalogo</a>
				</div>

				<div class="col-sm-12"
					style="position: fixed; bottom: 0; padding-bottom: 20px; max-width: 330px;">
					<a href="Logout"><i class="fas fa-sign-out-alt"
						style="margin-right: 20px"></i>Logout</a>
				</div>
			</div>
		</nav>
		<%Cliente c=(Cliente)session.getAttribute("cliente");%>
		<div class="MyContainer">
			<div class="row" style="margin-bottom: 20px;">
				<div class="col-sm-5">
					<h4>
						<%=c.getNomeAttivita() %> <br> di <%=c.getNominativo() %>
					</h4>
				</div>
				<div class="col-sm-2">
					<h4>-</h4>
				</div>
				<div class="col-sm-5">
					<h4>Modifica dati cliente</h4>
				</div>
			</div>
			<p>E' possibile modificare la percentuale da applicare ad ogni
				articolo in possesso del cliente in caso di ritardo nella
				restituzione e il costo da applicare a resi senza nuovi ordini
				associati</p>

			<div class="container">
				<form action="ModificaCliente?email=<%=c.getEmail()%>" method="POST" class="was-validated">
					<div class="form-group">
						<label for="reso">Costo reso senza nuovo ordine:</label> <input
							type="number" min="0.00" max="100.00" step="0.01" name="costoReso"
							class="form-control" placeholder="Inserisci costo reso" id="reso"
							value="<%=c.getCostoReso() %>" required>
						<div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Inserisci costo in virgola
							mobile.</div>
					</div>
					<div class="form-group">
						<label for="ritardo">Percentuale ritardo:</label> <input
							type="number" class="form-control"  name="percentualeRitardo"
							placeholder="Inserisci percentuale ritardo" id="ritardo" min="0"
							max="100" value="<%=c.getPercentualeRitardo() %>" required>
						<div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Inserisci numero.</div>
					</div>
				<div class="form-group  ">
						<label for="premium">Cliente Premium:</label> 
						
						<%if(c.getPremium()>0){%>
							<input class="premiumsino form-check-input" id="premiumcheck" type="checkbox" name="checkPremium" checked>
							<br>
						 	<input name="premium" id="settimanePremium" type="number" min="1" max="4" value="<%=c.getPremium()%>">
							
						<%}else {%>
							<input class="premiumsino form-check-input" id="premiumcheck" type="checkbox" name="checkPremium">
							<br>
						 	<input name="premium" id="settimanePremium" type="number" min="1" max="4" style="display: none;">
						<%} %>


						<div class="alert alert-warning">
							<strong>Nota!</strong> Selezionando il cliente come Premium viene
							posticipato l'addebito di ritardo per gli articoli di questo cliente del numero di settimane selezionato.

						</div>

					</div>
					<button type="submit" class="btn conferma">MODIFICA</button>

				</form>
			</div>

		</div>
	</div>
</body>
</html>