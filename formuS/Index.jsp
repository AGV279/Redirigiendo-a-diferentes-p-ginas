<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<head>
    <title>Formulario</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="#page-top" style="color: white;">
                TECNM
                <img src="Imagenes/0.png" alt="TEC logo" style="height: 40px;">
            </a>
            <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" 
            data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" 
            aria-label="Toggle navigation">
                Menu
                <i class="bi bi-list" style="color: white;"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded" href="#" data-bs-toggle="modal" data-bs-target="#loginModal">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Carousel -->
    <div id="carouselE1" class="carousel slide" data-bs-ride="carousel" style="margin-top: 80px;">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselE1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselE1" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselE1" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Imagenes/1.png" class="d-block w-100" alt="Slide 1" style="height: 800px;">
            </div>
            <div class="carousel-item">
                <img src="Imagenes/2.jpeg" class="d-block w-100" alt="Slide 2" style="height: 800px;">
            </div>
            <div class="carousel-item">
                <img src="Imagenes/3.jpeg" class="d-block w-100" alt="Slide 3" style="height: 800px;">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselE1" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselE1" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Login Modal -->
    <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary text-white">
                    <h5 class="modal-title" id="loginModalLabel">Iniciar Sesión</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="loginForm">
                        <div class="mb-3">
                            <label for="email" class="form-label">Correo Institucional</label>
                            <input type="email" id="email" name="email" class="form-control" placeholder="ejemplo@tecnm.mx" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Contraseña</label>
                            <input type="password" id="password" name="password" class="form-control" placeholder="Ingresa tu contraseña" required>
                        </div>
                        <div class="d-grid">
                            <button type="button" class="btn btn-primary" onclick="login()">Iniciar Sesión</button>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <a href="#" class="text-muted">¿Olvidaste tu contraseña?</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="js/bootstrap.min.js"></script>
    <script>
        function login() {
            // Aquí podrías validar la información del login si fuera necesario
            // Luego, redirigir a la página de destino
            window.location.href = "Formulario..html";
        }
    </script>
</body>
</html>
