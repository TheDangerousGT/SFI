<!-- 
* Copyright 2016 Carlos Eduardo Alfaro Orellana
-->

<?php
include('php/session_check.php');

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Búsqueda | SFI</title>
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/sweetalert2.css">
	<link rel="stylesheet" href="css/material.min.css">
	<link rel="stylesheet" href="css/material-design-iconic-font.min.css">
	<link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet" href="css/main.css">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="js/material.min.js" ></script>
	<script src="js/sweetalert2.min.js" ></script>
	<script src="js/jquery.mCustomScrollbar.concat.min.js" ></script>
	<script src="js/main.js" ></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<link rel="shortcut icon" href="assets/municipalidad/LogoA.png" type="image/x-icon">
</head>
<body>
	<img id="logo" src="./assets/muni.png" style="display:none;">
    <img id="qr" src="./assets/qr.png" style="display:none;">
	<!-- Notifications area -->
	<section class="full-width container-notifications">
		<div class="full-width container-notifications-bg btn-Notification"></div>
	    <section class="NotificationArea">
	        <div class="full-width text-center NotificationArea-title tittles">Notifications <i class="zmdi zmdi-close btn-Notification"></i></div>
	        <a href="#" class="Notification" id="notifation-unread-1">
	            <div class="Notification-icon"><i class="zmdi zmdi-accounts-alt bg-info"></i></div>
	            <div class="Notification-text">
	                <p>
	                    <i class="zmdi zmdi-circle"></i>
	                    <strong>New User Registration</strong> 
	                    <br>
	                    <small>Just Now</small>
	                </p>
	            </div>
	        	<div class="mdl-tooltip mdl-tooltip--left" for="notifation-unread-1">Notification as UnRead</div> 
	        </a>
	        <a href="#" class="Notification" id="notifation-read-1">
	            <div class="Notification-icon"><i class="zmdi zmdi-cloud-download bg-primary"></i></div>
	            <div class="Notification-text">
	                <p>
	                    <i class="zmdi zmdi-circle-o"></i>
	                    <strong>New Updates</strong> 
	                    <br>
	                    <small>30 Mins Ago</small>
	                </p>
	            </div>
	            <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-1">Notification as Read</div>
	        </a>
	        <a href="#" class="Notification" id="notifation-unread-2">
	            <div class="Notification-icon"><i class="zmdi zmdi-upload bg-success"></i></div>
	            <div class="Notification-text">
	                <p>
	                    <i class="zmdi zmdi-circle"></i>
	                    <strong>Archive uploaded</strong> 
	                    <br>
	                    <small>31 Mins Ago</small>
	                </p>
	            </div>
	            <div class="mdl-tooltip mdl-tooltip--left" for="notifation-unread-2">Notification as UnRead</div>
	        </a> 
	        <a href="#" class="Notification" id="notifation-read-2">
	            <div class="Notification-icon"><i class="zmdi zmdi-mail-send bg-danger"></i></div>
	            <div class="Notification-text">
	                <p>
	                    <i class="zmdi zmdi-circle-o"></i>
	                    <strong>New Mail</strong> 
	                    <br>
	                    <small>37 Mins Ago</small>
	                </p>
	            </div>
	            <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-2">Notification as Read</div>
	        </a>
	        <a href="#" class="Notification" id="notifation-read-3">
	            <div class="Notification-icon"><i class="zmdi zmdi-folder bg-primary"></i></div>
	            <div class="Notification-text">
	                <p>
	                    <i class="zmdi zmdi-circle-o"></i>
	                    <strong>Folder delete</strong> 
	                    <br>
	                    <small>1 hours Ago</small>
	                </p>
	            </div>
	            <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-3">Notification as Read</div>
	        </a>  
	    </section>
	</section>
	<!-- navBar -->
	<div class="full-width navBar">
		<div class="full-width navBar-options">
			<i class="zmdi zmdi-more-vert btn-menu" id="btn-menu"></i>	
			<div class="mdl-tooltip" for="btn-menu">Menu</div>
			<nav class="navBar-options-list">
				<ul class="list-unstyle">
					<li class="btn-Notification" id="notifications">
						<i class="zmdi zmdi-notifications"></i>
						<!-- <i class="zmdi zmdi-notifications-active btn-Notification" id="notifications"></i> -->
						<div class="mdl-tooltip" for="notifications">Notifications</div>
					</li>
					<li class="" id="btn-exit">
						<i class="zmdi zmdi-power"></i>
						<div class="mdl-tooltip" for="btn-exit">LogOut</div>
						<script>
    document.getElementById('btn-exit').addEventListener('click', function(event) {
        event.preventDefault(); // Evita que se ejecute el redireccionamiento inmediato
        Swal.fire({
            title: 'You want out of the system?',
            text: "The current session will be closed and will leave the system",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, exit',
            cancelButtonText: 'Cancel'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = 'php/logout.php'; // Redirige a logout.php si el usuario confirma
            }
        });
    });
</script>
					</li>
					<li class="text-condensedLight noLink" ><small><?php echo $_SESSION['fullName']; ?></small></li>
					<li class="noLink">
						<figure>
							<img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
						</figure>
					</li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- navLateral -->
	<section class="full-width navLateral">
		<div class="full-width navLateral-bg btn-menu"></div>
		<div class="full-width navLateral-body">
			<div class="full-width navLateral-body-logo text-center tittles">
				<i class="zmdi zmdi-close btn-menu"></i> Inventory 
			</div>
            <figure class="full-width" style="height: 77px;">
                <div class="navLateral-body-cl">
                    <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
                </div>
                <figcaption class="navLateral-body-cr hide-on-tablet">
                    <span>
					<?php echo $_SESSION['fullName']; ?><br>
                        <small>Admin</small>
                    </span>
                </figcaption>
            </figure>
			<div class="full-width tittles navLateral-body-tittle-menu">
				<i class="zmdi zmdi-desktop-mac"></i><span class="hide-on-tablet">&nbsp; DASHBOARD</span>
			</div>
			<nav class="full-width">
				<ul class="full-width list-unstyle menu-principal">
					<li class="full-width">
						<a href="home.php" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-view-dashboard"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								HOME
							</div>
						</a>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="#!" class="full-width btn-subMenu">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-case"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								ADMINISTRATION
							</div>
							<span class="zmdi zmdi-chevron-left"></span>
						</a>
						<ul class="full-width menu-principal sub-menu-options">
							<li class="full-width">
								<a href="company.html" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-balance"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										COMPANY
									</div>
								</a>
							</li>
							<li class="full-width">
								<a href="payments.html" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-card"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										INGRESO DE FACTURAS
									</div>
								</a>
							</li>
							<li class="full-width">
								<a href="categories.html" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-label"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										CATEGORIES
									</div>
								</a>
							</li>
						</ul>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="#!" class="full-width btn-subMenu">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-face"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								USERS
							</div>
							<span class="zmdi zmdi-chevron-left"></span>
						</a>
						<ul class="full-width menu-principal sub-menu-options">
							<li class="full-width">
								<a href="admin" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										ADMINISTRATORS
									</div>
								</a>
							</li>
							<li class="full-width">
								<a href="workers" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-accounts"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										TRABAJADORES
									</div>
								</a>
							</li>
						</ul>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="products.php" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-case"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								INGRESAR PRODUCTO
							</div>
						</a>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="searchproduct.php" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-search"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								BUSCAR PRODUCTO
							</div>
						</a>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="tarjeta_responsabilidad.php" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-search"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								TARJETA DE RESPONSABILIDAD
							</div>
						</a>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="sales.html" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-shopping-cart"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								SALES
							</div>
						</a>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="inventory.html" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-store"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								INVENTORY
							</div>
						</a>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="#!" class="full-width btn-subMenu">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-wrench"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								SETTINGS
							</div>
							<span class="zmdi zmdi-chevron-left"></span>
						</a>
						<ul class="full-width menu-principal sub-menu-options">
							<li class="full-width">
								<a href="#!" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-widgets"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										OPTION
									</div>
								</a>
							</li>
							<li class="full-width">
								<a href="#!" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-widgets"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										OPTION
									</div>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</section>
	<!-- pageContent -->
	<section class="full-width pageContent">
		<section class="full-width header-well">
			<div class="full-width header-well-icon">
				<img src="assets/municipalidad/Dorado .png" width="105px" style="margin-top: 15px; margin-left: 85px;" alt="">
			</div>
			<div class="full-width header-well-text">
				<p class="text-condensedLight">
					Sistema de Búsqueda de inventarios mediante la nomenclatura, ingresa la nomenclatura a buscar con el siguiente formato: ej. 01-01-1232.2-01-001
				</p>
			</div>
			<div class="middle">
				<input type="search" class="form-control" id="nomenclatureSearch" placeholder="Ingrese la Nomenclatura (ej. 03021232201001)">
				<button type="button" class="btn btn-primary" id="searchButton"><i class="zmdi zmdi-search"></i></button>
			</div>
		</section>
		
		<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
			<div class="mdl-tabs__tab-bar"></div>
			<div class="mdl-tabs__panel is-active" id="tabNewProvider">
				<div class="mdl-grid">
					<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
						<div class="full-width panel mdl-shadow--2dp">
							<div class="full-width panel-tittle bg-primary text-center tittles">
								Nuevo Proveedor
							</div>
							<div class="full-width panel-content">
								<form id="providerForm">
									<h4 class="text-condensedLight">Datos del Bien</h4>
									<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<span><strong>Dependencia</strong></span>
										<input class="form-control" type="text" placeholder="Dependencia" aria-label="default input example" id="dependenciaInput" disabled readonly>
										<span class="mdl-textfield__error">No válido</span>
									</div>
									<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<span><strong>Unidad Administrativa</strong></span>
										<input class="form-control" type="text" placeholder="Unidad Administrativa" aria-label="default input example" id="unidadInput" disabled readonly>
										<span class="mdl-textfield__error">No válido</span>
									</div>
									<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<span><strong>Cuenta Mayor</strong></span>
										<input class="form-control" type="text" placeholder="Cuenta Mayor" aria-label="default input example" id="cuentaMayorInput" disabled readonly>
										<span class="mdl-textfield__error">No válido</span>
									</div>
									<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<span><strong>Sub Cuenta</strong></span>
										<input class="form-control" type="text" placeholder="Sub Cuenta" aria-label="default input example" id="subcuentaInput" disabled readonly>
										<span class="mdl-textfield__error">No válido</span>
									</div>
									<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<span><strong>Precio</strong></span>
										<input class="form-control" type="text" placeholder="Precio" aria-label="default input example" id="precioInput" disabled readonly>
										<span class="mdl-textfield__error">Número inválido</span>
									</div>
									<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<span><strong>Descripción</strong></span>
										<textarea class="form-control" id="descripcionInput" placeholder="Descripción" rows="3" disabled readonly></textarea>
										<span class="mdl-textfield__error">No válido</span>
									</div>
									<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<span><strong>Fecha de Ingreso</strong></span>
										<input class="form-control" type="date" placeholder="Fecha de Ingreso" aria-label="default input example" id="fechaIngresoInput" disabled readonly>
										<span class="mdl-textfield__error">No válido</span>
									</div>
									<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<span><strong>Imagen del producto</strong></span><br>
										<img src="" class="img-thumbnail" alt="Imagen del producto" id="imagenProducto" style="margin-left: 150px;">
										<span class="mdl-textfield__error">No válido</span>
									</div>
									<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<span><strong>Imprimir Etiqueta</strong></span>
										<a href="#" id="downloadLabel">
											<i class="zmdi zmdi-print" style="color: rgb(4, 190, 4); font-size: 30px; margin-left: 100px;"></i>
										</a>
										<span class="mdl-textfield__error">No válido</span>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script>
$(document).ready(function() {
    $('#searchButton').click(function() {
        var nomenclature = $('#nomenclatureSearch').val();

        $.ajax({
            url: 'php/get_data_by_nomenclatura.php',
            method: 'POST',
            dataType: 'json',
            data: { nomenclatura: nomenclature },
            success: function(response) {
                if (response.error) {
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: "Has ingresado una nomenclatura no registrada",
                        footer: '<a href="products.php">¿Quieres registrar el nuevo bien?</a>'
                    });
                    // Limpiar los campos
                    $('#dependenciaInput').val('');
                    $('#unidadInput').val('');
                    $('#cuentaMayorInput').val('');
                    $('#subcuentaInput').val('');
                    $('#precioInput').val('');
                    $('#descripcionInput').val('');
                    $('#fechaIngresoInput').val('');
                    $('#imagenProducto').hide();
                } else {
                    if (response.foto && response.foto.trim() !== "") {
                        $('#imagenProducto').attr('src', response.foto).show();
                    } else {
                        $('#imagenProducto').hide();
                    }
                    $('#dependenciaInput').val(response.dependencia).prop('disabled', true);
                    $('#unidadInput').val(response.unidad_admin).prop('disabled', true);
                    $('#cuentaMayorInput').val(response.cuenta_mayor).prop('disabled', true);
                    $('#subcuentaInput').val(response.subcuenta).prop('disabled', true);
                    $('#precioInput').val(response.precio).prop('disabled', true);
                    $('#descripcionInput').val(response.descripcion).prop('disabled', true);
                    $('#fechaIngresoInput').val(response.fecha).prop('disabled', true);
                }
            },
            error: function(xhr, status, error) {
                console.error('Error al obtener los datos:', error);
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Error al obtener los datos de la nomenclatura.'
                });
                $('#imagenProducto').hide();
            }
        });
    });

    // Configurar el clic en el icono de descarga fuera del success
    $('#downloadLabel').on('click', function(event) {
        event.preventDefault();

        // Supongamos que quieres usar el valor actual del campo de nomenclatura
        var nomenclatura = $('#nomenclatureSearch').val();
        console.log('Nomenclatura a imprimir:', nomenclatura); // Verifica si esto se ejecuta

        // Llamar a la función para imprimir la etiqueta
        imprimirEtiqueta(nomenclatura);
    });
});

function imprimirEtiqueta(nomenclatura) {
    // Comprobación de si la función se está ejecutando
    console.log('Función imprimirEtiqueta ejecutada con:', nomenclatura);

    let logo = document.getElementById('logo');
    let qr = document.getElementById('qr');

    if (!logo || !qr) {
        console.error('Los elementos logo o qr no existen en el DOM.');
        return; // Detener la función si no existen
    }

    let logoSrc = logo.src;
    let qrSrc = qr.src;

    let contenido = `
        <div class="etiqueta">
            <img src="${logoSrc}" alt="Logo" class="logo">
            <div class="info">
                <p>MUNICIPALIDAD DE RÍO BRAVO</p>
                <p class="nomenclatura">${nomenclatura}</p>
                <p>Inventario ${new Date().getFullYear()}</p>
            </div>
            <img src="${qrSrc}" alt="QR Code" class="qr-code">
        </div>
    `;

    let ventanaImpresion = window.open('', '', 'width=600,height=300');
    ventanaImpresion.document.write('<html><head><title>Imprimir Etiqueta</title>');
    ventanaImpresion.document.write('<style>');
    ventanaImpresion.document.write(`
        body { margin: 0; padding: 0; }
        .etiqueta {
            width: 10cm; /* 100 mm = 10 cm */
            height: 1.8cm; /* 18 mm = 1.8 cm */
            border: 1px solid black;
            display: flex;
            align-items: center;
            justify-content: space-between;
            font-family: Arial, sans-serif;
            font-size: 10px;
            padding: 5px;
            box-sizing: border-box; /* Incluye el padding en el tamaño total */
        }
        .logo {
            width: 1.2cm;
            height: 1.5cm; /* Ajusta el alto del logo para que encaje mejor */
            margin-right: 5px;
        }
        .info {
            flex-grow: 1;
            text-align: center;
        }
        .info p {
            margin: 0;
            line-height: 1.2;
        }
        .nomenclatura {
            font-size: 20px;
            font-weight: bold;
            margin: 0.5cm 0; /* Espacio adicional alrededor del texto de nomenclatura */
        }
        .qr-code {
            width: 1.6cm;
            height: 1.6cm;
            margin-left: 5px;
        }
    `);
    ventanaImpresion.document.write('</style></head><body>');
    ventanaImpresion.document.write(contenido);
    ventanaImpresion.document.write('</body></html>');
    ventanaImpresion.document.close();
    ventanaImpresion.focus();
    ventanaImpresion.print();
    ventanaImpresion.close();

    // Redireccionar a products.php después de la impresión
    window.location.href = './searchproduct.php';
}
		</script>
	</section>
</body>
</html>