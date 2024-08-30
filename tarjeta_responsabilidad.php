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
	<script src="js/select.js"></script>
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
						<a href="searchproduct.php" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-search"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								TARJETA DE RESPONSABILIDAD
							</div>
						</a>
					</li>
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
					Sistema de Tarjetas de responsabilidad de inventarios mediante la dependencia y unidad admnistrativa, selecciona la dependencia y unidad admin a buscar.
				</p>
			</div>
		</section>
		
		<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
    <div class="mdl-tabs__tab-bar"></div>
    <div class="mdl-tabs__panel is-active" id="tabNewProvider">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
                <div class="full-width panel mdl-shadow--2dp">
                    <div class="full-width panel-tittle bg-primary text-center tittles">
                        TARJETA DE RESPONSABILIDAD
                    </div>
                    <div class="full-width panel-content">
                        <form id="providerForm">
                            <h4 class="text-condensedLight">Datos de la tarjeta</h4>
                            <div class="mdl-textfield mdl-js-textfield">
                                <span><strong>Dependencia</strong></span>
                                <select class="form-select" name="No_Dependencia" id="No_Dependencia" onchange="updateUnidadAdmin()" required>
                                    <option value="" disabled selected>Dependencia</option>
                                    <!-- Las opciones de dependencia se agregarán dinámicamente -->
                                </select>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <span><strong>Unidad Administrativa</strong></span>
                                <select class="form-select" name="Unidad_Admin" id="Unidad_Admin" required>
                                    <option value="" disabled selected>Unidad Administrativa</option>
                                    <!-- Las opciones de unidad administrativa se agregarán dinámicamente -->
                                </select>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <span><strong>Tarjeta de Responsabilidad</strong></span><br>
                                <a href="#" id="downloadPdf">
								<i class="zmdi zmdi-download" id="download-pdf" style="font-size: 40px; margin-left: 30px; margin-top: 10px; color: green; cursor: pointer;"></i>
                                </a>
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
document.getElementById("download-pdf").addEventListener("click", function(e) {
    e.preventDefault();
    
    var dependencia = document.getElementById("No_Dependencia").value;
    var unidadAdmin = document.getElementById("Unidad_Admin").value;
    
    if (dependencia && unidadAdmin) {
        var formData = new FormData();
        formData.append("No_Dependencia", dependencia);
        formData.append("Unidad_Admin", unidadAdmin);
        
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "php/generate_pdf.php", true);
        xhr.responseType = "blob";
        xhr.onload = function() {
            if (xhr.status === 200) {
                var blob = new Blob([xhr.response], { type: "application/pdf" });
                var link = document.createElement("a");
                link.href = window.URL.createObjectURL(blob);
                link.download = "Tarjeta_Responsabilidad.pdf";
                link.click();
            } else {
                alert("Error al generar el PDF.");
            }
        };
        xhr.send(formData);
    } else {
        alert("Por favor, selecciona una Dependencia y una Unidad Administrativa.");
    }
});

</script>
		<script>
												document.addEventListener('DOMContentLoaded', (event) => {
													const dateInput = document.getElementById('fecha-input');
													const today = new Date().toISOString().split('T')[0];
													dateInput.max = today;
							
													const progressBarContainer = document.getElementById('progress-bar');
													const progressBar = progressBarContainer.querySelector('.progress-bar');
							
													document.getElementById('formFile').addEventListener('change', function(event) {
														const file = event.target.files[0];
														if (file) {
															const xhr = new XMLHttpRequest();
															xhr.open('POST', 'http://localhost:3000/upload');
							
															xhr.upload.addEventListener('progress', function(e) {
																if (e.lengthComputable) {
																	const percentComplete = (e.loaded / e.total) * 100;
																	progressBar.style.width = percentComplete + '%';
																	progressBar.setAttribute('aria-valuenow', percentComplete);
																	progressBar.innerHTML = Math.round(percentComplete) + '%';
																	progressBarContainer.style.display = percentComplete < 100 ? 'block' : 'none';
																}
															});
							
															xhr.addEventListener('load', function() {
																if (xhr.status === 200) {
																	alert('Archivo subido exitosamente');
																} else {
																	alert('Error al subir el archivo');
																}
																progressBarContainer.style.display = 'none';
															});
							
															xhr.addEventListener('error', function() {
																alert('Error al subir el archivo');
																progressBarContainer.style.display = 'none';
															});
							
															const formData = new FormData();
															formData.append('file', file);
															xhr.send(formData);
														}
													});
							
													// Llama a la función para cargar las dependencias al cargar la página
													loadDependencias();
												});
		</script>
	</section>
</body>
</html>