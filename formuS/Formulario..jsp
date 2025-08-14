<%@ page contentType="text/html;charset=UTF-8" language="java" %> 

<html>
<head>
    <title>Formulario Escolar</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script language="JavaScript" src="javascript/validar.js"></script>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#" style="color: white;">
                Formulario
                <img src="Imagenes/0.png" alt="Logo" style="height: 40px;">
            </a>
            <button class="navbar-toggler bg-primary text-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive">
                Menu <i class="bi bi-list"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="Index.html">Inicio</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5 pt-5">
        <h1 class="text-center mb-4" style="background-color: black;">Formulario Escolar</h1>
        <div class="form-container">
            <form action="#" method="post" onsubmit="return validarFormulario()">
                <div class="row">

                    <!-- Primera sección -->
                    <div class="col-md-3">
                        <div class="section-title">Información Personal</div>
                        <label for="matricula">Matrícula:</label>
                        <input type="number" id="matricula" name="matricula" min="1" class="form-control" required required placeholder="Ingresa tu matrícula">

                        <label for="nombre">Nombre:</label>
                        <input type="text" id="nombre" name="nombre" class="form-control" required required placeholder="Ingresa tu nombre">

                        <label for="apellido_paterno">Apellido Paterno:</label>
                        <input type="text" id="apellido_paterno" name="apellido_paterno" class="form-control" required required placeholder="Ingresa tu apellido paterno">

                        <label for="apellido_materno">Apellido Materno:</label>
                        <input type="text" id="apellido_materno" name="apellido_materno" class="form-control" required required placeholder="Ingresa tu apellido materno">

                        <label>Sexo:</label>
                        <div class="d-flex gap-3 justify-content-start">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="sexo_femenino" name="sexo" value="Femenino" required>
                                <label class="form-check-label" for="sexo_femenino">Femenino</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="sexo_masculino" name="sexo" value="Masculino">
                                <label class="form-check-label" for="sexo_masculino">Masculino</label>
                            </div>
                        </div>
                        <label for="fecha_nacimiento">Fecha de Nacimiento:</label>
                        <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" class="form-control" required>
                    </div>

                    <!-- Segunda sección -->
                    <div class="col-md-3">
                        <div class="section-title">Datos Académicos</div>
                        <label for="semestre">Semestre:</label>
                        <select id="semestre" name="semestre" class="form-select">
                            <option value="" selected>Selecciona tu semestre</option>
                            <option value="1">Semestre 1</option>
                            <option value="2">Semestre 2</option>
                            <option value="3">Semestre 3</option>
                            <option value="4">Semestre 4</option>
                            <option value="5">Semestre 5</option>
                            <option value="6">Semestre 6</option>
                            <option value="7">Semestre 7</option>
                            <option value="8">Semestre 8</option>
                            <option value="9">Semestre 9</option>
                        </select>

                        <label class="form-label">Carrera:</label>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="sistemas" name="carrera" value="sistemas">
                            <label class="form-check-label" for="sistemas">
                                Ing. en Sistemas Computacionales
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="mecatronica" name="carrera" value="mecatronica">
                            <label class="form-check-label" for="mecatronica">
                                Ing. en Mecatrónica
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="industrial" name="carrera" value="industrial">
                            <label class="form-check-label" for="industrial">
                                Ing. Industrial
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="electronica" name="carrera" value="electronica">
                            <label class="form-check-label" for="electronica">
                                Ing. en Electrónica
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gestion" name="carrera" value="gestion">
                            <label class="form-check-label" for="gestion">
                                Ing. en Gestión Empresarial
                            </label>
                        </div>
                        <label for="grupo">Grupo:</label>
                        <select id="grupo" name="grupo" class="form-select">
                            <option value="" selected>Selecciona tu grupo</option>
                            <option value="1">Grupo 1</option>
                            <option value="2">Grupo 2</option>
                            <option value="3">Grupo 3</option>
                        </select>
                        <label>Turno:</label>
                        <div class="d-flex gap-3 justify-content-start">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="turno_matutino" name="turno" value="Matutino" required>
                                <label class="form-check-label" for="turno_matutino">Matutino</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="turno_vespertino" name="turno" value="Vespertino">
                                <label class="form-check-label" for="turno_vespertino">Vespertino</label>
                            </div>
                        </div>
                    </div>

                    <!-- Tercera sección -->
                    <div class="col-md-3">
                        <div class="section-title">Contacto</div>
                        <label for="email">Correo Electrónico:</label>
                        <input type="email" id="email" name="email" placeholder="ejemplo@dominio.com" class="form-control" required>

                        <label for="telefono_celular">Teléfono Celular:</label>
                        <input type="tel" id="telefono_celular" name="telefono_celular" placeholder="Ingresa tu teléfono celular" class="form-control" required>

                        <label for="calle">Calle:</label>
                        <input type="text" id="calle" name="calle" class="form-control" required placeholder="Ingresa tu calle>

                        <label for="colonia">Colonia:</label>
                        <input type="text" id="colonia" name="colonia" class="form-control" required placeholder="Ingresa tu colonia">

                        <label for="codigo_postal">Código Postal:</label>
                        <input type="number" id="codigo_postal" name="codigo_postal" class="form-control" required placeholder="Ingresa tu código postal">

                        <label for="estado">Estado:</label>
                        <select id="estado" name="estado" class="form-select">
                            <option value="" selected>Seleccione su estado</option>
                            <option value="" selected>Morelos</option>
                            <!-- List of states goes here -->
                        </select>
                    </div>

                    <!-- Cuarta sección -->
                    <div class="col-md-3">
                        <div class="section-title">Otras Actividades</div>
                        <label for="actividades">Actividades Extracurriculares:</label>
                        <select id="actividades" name="actividades" class="form-select">
                            <option value="" selected>Selecciona una actividad</option>
                            <option value="1">Taller de Lectura</option>
                            <option value="2">Taller de Danza</option>
                            <option value="3">Taller de Dibujo</option>
                            <option value="4">Taller de Ajedrez</option>
                            <option value="5">Ninguna</option>
                        </select>

                        <label for="expectativas">Expectativas del curso:</label>
                        <textarea id="expectativas" name="expectativas" class="form-control" placeholder="Ingresa tus expectativas del curso"></textarea>

                        <label for="logros">Comentarios:</label>
                        <textarea id="logros" name="logros" class="form-control" placeholder="Ingresa tus Comentarios"></textarea>

                        <button type="submit" class="btn btn-primary w-100">Enviar</button>
                    </div>

                </div>
            </form>
        </div>
    </div>

    <script src="js/bootstrap.min.js"></script>
</body>

</html>

