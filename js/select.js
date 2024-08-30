document.addEventListener('DOMContentLoaded', (event) => {
    loadDependencias();
    loadCuentasMayores();

    const dateInput = document.getElementById('fecha-input');
    if (dateInput) {
        const today = new Date().toISOString().split('T')[0];
        dateInput.max = today;
    }

    const progressBarContainer = document.getElementById('progress-bar');
    if (progressBarContainer) {
        const progressBar = progressBarContainer.querySelector('.progress-bar');
        if (progressBar) {
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
        }
    }
});

function loadDependencias() {
    fetch('php/get_dependencias.php')
        .then(response => response.json())
        .then(data => {
            const dependenciaSelect = document.getElementById('No_Dependencia');
            if (dependenciaSelect) {
                dependenciaSelect.innerHTML = '<option value="" disabled selected>Dependencia</option>';
                data.forEach(dependencia => {
                    const option = document.createElement('option');
                    option.value = dependencia.id;
                    option.textContent = dependencia.nombre;
                    dependenciaSelect.appendChild(option);
                });
            }
        });
}

function updateUnidadAdmin() {
    const dependenciaId = document.getElementById('No_Dependencia')?.value;
    if (dependenciaId) {
        fetch(`php/get_unidades_admin.php?dependencia_id=${dependenciaId}`)
            .then(response => response.json())
            .then(data => {
                const unidadAdminSelect = document.getElementById('Unidad_Admin');
                if (unidadAdminSelect) {
                    unidadAdminSelect.innerHTML = '<option value="" disabled selected>Unidad Administrativa</option>';
                    data.forEach(unidad => {
                        const option = document.createElement('option');
                        option.value = unidad.id;
                        option.textContent = unidad.nombre;
                        unidadAdminSelect.appendChild(option);
                    });
                }
            });
    }
}

function loadCuentasMayores() {
    fetch('php/get_cuentas.php')
        .then(response => response.json())
        .then(data => {
            const cuentaMayorSelect = document.getElementById('cta_mayor');
            if (cuentaMayorSelect) {
                cuentaMayorSelect.innerHTML = '<option value="" disabled selected>Cuenta Mayor Contable</option>';
                data.forEach(cuenta => {
                    const option = document.createElement('option');
                    option.value = cuenta.id;
                    option.textContent = cuenta.nombre;
                    cuentaMayorSelect.appendChild(option);
                });
            }
        });
}

function updateSubcuentas() {
    const cuentaMayorId = document.getElementById('cta_mayor')?.value;
    if (cuentaMayorId) {
        fetch(`php/get_subcuentas.php?cuenta_mayor_id=${cuentaMayorId}`)
            .then(response => response.json())
            .then(data => {
                const subcuentaSelect = document.getElementById('no_subcuenta');
                if (subcuentaSelect) {
                    subcuentaSelect.innerHTML = '<option value="" disabled selected>Sub Cuenta Contable</option>';
                    data.forEach(subcuenta => {
                        const option = document.createElement('option');
                        option.value = subcuenta.id;
                        option.textContent = subcuenta.nombre;
                        subcuentaSelect.appendChild(option);
                    });
                }
            })
            .catch(error => console.error('Error al obtener las subcuentas:', error));
    }
}

function toggleShow() {
    const el = document.getElementById("box");
    if (el) {
        el.classList.toggle("show");
    }
}
