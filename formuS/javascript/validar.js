function validarFormulario() {
    var form1 = document.forms[0]; // Obtener el formulario por el índice
    var campos = form1.elements;  // Obtener todos los elementos del formulario

    // Recorremos todos los campos del formulario
    for (var x = 0; x < campos.length; x++) {
        // Validación de campos de texto
        if (campos[x].type === "text" && campos[x].id !== "novalid") {
            var valor = campos[x].value.trim(); // Obtener el valor del campo
            if (valor === "") {
                alert("El campo " + campos[x].name + " es obligatorio.");
                campos[x].focus();
                return false;
            }

            // Validación para solo permitir letras (si es un campo de texto)
            if (!/^[A-Za-zÁÉÍÓÚáéíóú\s]+$/.test(valor)) {
                alert("El campo " + campos[x].name + " solo puede contener letras.");
                campos[x].focus();
                return false;
            }
        }

        // Validación para el campo "matricula" 
        if (campos[x].id === "matricula") {
            var matricula = campos[x].value.trim();
            if (!/^\d{8}$/.test(matricula)) {  // Aceptar solo 8 dígitos
                alert("La matrícula debe contener exactamente 8 números.");
                campos[x].focus();
                return false;
            }
        }

        // Validación para el campo de fecha de nacimiento
        if (campos[x].id === "fecha_nacimiento") {
            if (campos[x].value.trim() === "") {
                alert("La fecha de nacimiento es obligatoria.");
                campos[x].focus();
                return false;
            }
            var fecha_nacimiento = new Date(campos[x].value);
            var hoy = new Date();
            var edad = hoy.getFullYear() - fecha_nacimiento.getFullYear();
            var m = hoy.getMonth() - fecha_nacimiento.getMonth();
            if (m < 0 || (m === 0 && hoy.getDate() < fecha_nacimiento.getDate())) {
                edad--;
            }
            if (edad < 18) {
                alert("Debes ser mayor de edad para completar este formulario.");
                campos[x].focus();
                return false;
            }
        }

        // Validación del campo "Carrera"
        var carreraSeleccionada = false;
        var carreras = document.getElementsByName("carrera");
        for (var i = 0; i < carreras.length; i++) {
            if (carreras[i].checked) {
                carreraSeleccionada = true;
                break;
            }
        }
        if (!carreraSeleccionada) {
            alert("Por favor, selecciona tu carrera.");
            return false;
        }

        // Validación para el campo de calle
        if (campos[x].id === "calle") {
            var colonia = campos[x].value.trim();
            if (colonia === "") {
                alert("El campo Colonia es obligatorio.");
                campos[x].focus();
                return false;
            }
            if (!/^[A-Za-zÁÉÍÓÚáéíóúÑñ\s\.\-]+$/.test(calle)) {
                alert("El campo " + campos[x].name + " solo puede contener letras.");
                campos[x].focus();
                return false;
            }
        }
        


        // Validación para el campo de colonia
        if (campos[x].id === "colonia") {
            var colonia = campos[x].value.trim();
            if (colonia === "") {
                alert("El campo Colonia es obligatorio.");
                campos[x].focus();
                return false;
            }
            if (!/^[A-Za-zÁÉÍÓÚáéíóúÑñ\s\.\-]+$/.test(colonia)) {
                alert("El campo " + campos[x].name + " solo puede contener letras.");
                campos[x].focus();
                return false;
            }
        }
        

        // Validación para el campo de teléfono (solo números)
        if (campos[x].type === "tel") {
            var telefono = campos[x].value.trim();
            if (!/^[0-9]{10}$/.test(telefono)) { // Solo números y 10 dígitos
                alert("El campo Teléfono debe contener solo números y 10 dígitos.");
                campos[x].focus();
                return false;
            }
        }

        // Validación para el correo electrónico
        if (campos[x].type === "email") {
            var email = campos[x].value.trim();
            if (!/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(email)) {
                alert("Por favor, ingresa un correo electrónico válido.");
                campos[x].focus();
                return false;
            }
        }

        // Validación para el código postal (solo números)
        if (campos[x].id === "codigo_postal") {
            var codigo_postal = campos[x].value.trim();
            if (!/^[0-9]{5}$/.test(codigo_postal)) {
                alert("El campo Código Postal debe contener 5 dígitos.");
                campos[x].focus();
                return false;
            }
        }
    }
    return true; // Si pasa todas las validaciones, se enviará el formulario
}
