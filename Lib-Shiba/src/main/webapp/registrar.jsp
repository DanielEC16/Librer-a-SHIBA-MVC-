<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="CSS/registrar.css">
<title>Insert title here</title>
</head>
<body>
    <div class="imagen">
        <img src="img/Form.png" alt="" class="img-fluid">
    </div>
    <div class="container" id="main">
        <div class="sign-out">
            <form class="row m-0 g-3 needs-validation" novalidate>
                <h1 class="text-center">Registrarse</h1>
                <div class="col-12 col-sm-6">
                    <label for="validationCustom01" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="validationCustom01" placeholder="Nombre" required>
                </div>
                <div class="col-12 col-sm-6">
                    <label for="validationCustom02" class="form-label">Apellido</label>
                    <input type="text" class="form-control" id="validationCustom02" placeholder="Apellido" required>
                </div>
                <div class="col-12 col-sm-6">
                    <label for="validationCustom02" class="form-label">Telefono</label>
                    <input type="tel" class="form-control" id="validationCustom02" placeholder="Ej : 123456789" required maxlength="9"
                    pattern="[0-9]{9}" placeholder="Ej: 123456789">   
                </div>
                <div class="col-12 col-sm-6">
                    <label for="validationCustom02" class="form-label">DNI</label>
                    <input type="text" class="form-control" id="validationCustom02" placeholder="Ej : 12345678" required maxlength="9"
                    pattern="[0-9]{9}" placeholder="Ej: 123456789">
                </div>
                <div class="col-12">
                    <label for="validationCustom02" class="form-label">Direccion</label>
                    <input type="text" class="form-control" id="validationCustom02" placeholder="Apellido" required>
                </div>
                <div class="col-12">
                    <label for="validationCustomUsername" class="form-label">Correo</label>
                    <div class="input-group has-validation">
                        <input type="text" class="form-control" id="validationCustomUsername" placeholder="user-example"
                            required>
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="text" class="form-control" id="validationCustomUsername" placeholder="example.com"
                            required pattern=".*\..+">
                    </div>
                </div>
                <div class="col-12 col-sm-10">
                    <label class="form-label">Password</label>
                    <div class="input-group password-group">
                        <input type="password" class="form-control password-input" placeholder="Password" required>
                        <button class="btn btn-outline-secondary toggle-password" type="button"><i
                                class="bi bi-eye-slash fs-5 toggle-icon"></i></button>
                    </div>
                </div>
                <div class="col-12 d-flex justify-content-center">
                    <button class="btn btn-primary mt-3 px-5 rounded-pill" type="submit">Registrarse</button>
                </div>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-right">
                    <h3>Hello Friend</h3>
                </div>
                <div class="overlay-left">
                    <h3>Welcome Back</h3>
                </div>
            </div>
        </div>
        <div class="sign-in">
            <form class="row m-0 g-5 needs-validation" novalidate>
                <h1 class="text-center">Iniciar Sesion</h1>
                <div class="col-12">
                    <label for="validationCustom01" class="form-label">Correo</label>
                    <input type="text" class="form-control" id="validationCustom01" placeholder="Example.com" required>
                </div>
                <div class="col-12">
                    <label for="validationCustom02" class="form-label">Contraseña</label>
                    <div class="input-group password-group">
                        <input type="password" class="form-control password-input" placeholder="Password" required>
                        <button class="btn btn-outline-secondary toggle-password" type="button"><i
                                class="bi bi-eye-slash fs-5 toggle-icon"></i></button>
                    </div>
                </div>
                <div class="col-12 d-flex justify-content-center">
                    <button class="btn btn-primary" type="submit">Submit form</button>
                </div>
            </form>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
    <script src="JS/registrar.js"></script>
</body>
</html>