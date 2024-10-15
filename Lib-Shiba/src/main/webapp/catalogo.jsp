<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
    <link rel="stylesheet" href="CSS/catalogo.css">
<title>Insert title here</title>
</head>
<body>
    <header class="px-3 navbar sticky-top bg-body-tertiary">
        <div class="container-fluid d-flex justify-content-center justify-content-md-between flex-column flex-md-row">
            <a href="inicio.jsp" class="d-flex align-items-center text-decoration-none gap-2">
                <img src="img/logo.png" alt="" class="logo" />
                <span style="color: black" class="fst-normal fs-5">Shiba Store</span>
            </a>

            <ul class="nav d-flex align-items-center gap-4 fw-medium">
                <li>
                    <a href="index.jsp" class="nav-link px-2 link-body-emphasis">Inicio</a>
                </li>
                <li>
                    <a href="catalogo.jsp" class="nav-link px-2 link-body-emphasis">Productos</a>
                </li>
                <li>
                    <a href="#" class="nav-link px-2 link-body-emphasis">Ubicacion</a>
                </li>
                <li>
                    <a href="#" class="nav-link px-2 link-body-emphasis">Contacto</a>
                </li>
            </ul>


            <div class="cart-log d-flex gap-3 align-items-center">


                <div class="dropdown-center">
                    <a href="#"
                        class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle fs-5"
                        data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false"
                        data-bs-auto-close="outside">
                        <i class="bi bi-person-circle fs-3" class="rounded-circle"></i>
                    </a>


                    <form class="dropdown-menu dropdown-menu-end form-login p-3" data-bs-theme="dark">
                        <h3 class="text-center mb-3">Iniciar Sesion</h3>
                        <div class="mb-3">
                            <label for="exampleDropdownFormEmail2" class="form-label">Correo Electronico</label>
                            <input type="email" class="form-control" id="exampleDropdownFormEmail2"
                                placeholder="email@example.com">
                        </div>
                        <div class="mb-3">
                            <label for="exampleDropdownFormPassword2" class="form-label">Password</label>
                            <input type="password" class="form-control" id="exampleDropdownFormPassword2"
                                placeholder="Password">
                        </div>
                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary">Sign in</button>
                            <a href="registrar.jsp">¿No tienes una cuenta?</a>
                        </div>
                    </form>

                </div>
                <div class="separators">
                    <hr />
                    <hr />
                </div>

                <div class="dropdown-center">
                    <a href="#"
                        class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle fs-5"
                        data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                        <i class="bi bi-cart-fill fs-3" class="rounded-circle"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end p-2 drop-carrito" data-bs-theme="dark">
                        <li>
                            <div class="card">
                                <div class="row g-0">
                                    <div class="col-6 container-lib">
                                        <img src="https://marketplace.canva.com/EAFjNCKkDPI/1/0/1003w/canva-portada-de-libro-de-fantas%C3%ADa-dram%C3%A1tico-verde-Ct1fLal3ekY.jpg"
                                            class="img-fluid" alt="Portada del libro">
                                    </div>
                                    <div class="col-6">
                                        <div class="card-body d-flex flex-column gap-2">
                                            <h5 class="card-title">Titulo del libro</h5>
                                            <p class="card-text">Precio : S/.100</p>
                                            <div class="btn-group" role="group" aria-label="Basic example">
                                                <button type="button" class="btn btn-primary btn-minus"
                                                    disabled>-</button>
                                                <input type="text" class="form-control text-center quantity" value="1"
                                                    aria-label="Cantidad" style="max-width: 50px; border-radius: 0;">
                                                <button type="button" class="btn btn-primary btn-plus">+</button>
                                            </div>
                                            <p class="card-text"><small class="text-body-secondary">Sub-Total :
                                                    S/.100</small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="card">
                                <div class="row g-0">
                                    <div class="col-6 container-lib">
                                        <img src="https://marketplace.canva.com/EAFjNCKkDPI/1/0/1003w/canva-portada-de-libro-de-fantas%C3%ADa-dram%C3%A1tico-verde-Ct1fLal3ekY.jpg"
                                            class="img-fluid" alt="Portada del libro">
                                    </div>
                                    <div class="col-6">
                                        <div class="card-body">
                                            <h5 class="card-title">Titulo del libro</h5>
                                            <p class="card-text">Precio : S/.100</p>
                                            <div class="btn-group" role="group" aria-label="Basic example">
                                                <button type="button" class="btn btn-primary btn-minus"
                                                    disabled>-</button>
                                                <input type="text" class="form-control text-center quantity" value="1"
                                                    aria-label="Cantidad" style="max-width: 50px; border-radius: 0;">
                                                <button type="button" class="btn btn-primary btn-plus">+</button>
                                            </div>
                                            <p class="card-text"><small class="text-body-secondary">Sub-Total :
                                                    S/.100</small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <div class="d-grid mb-4">
                            <p>Total : S/. <span>100</span></p>
                            <button type="submit" class="btn btn-primary mx-auto">Proceder al pago</button>
                        </div>

                    </ul>
                </div>
            </div>
        </div>
    </header>



    <main>
        <section id="card-area">
            <div class="wrapper">

                <div class="box-area">
                    <div class="box">
                        <img src="https://www.cuartomundo.cl/wp-content/uploads/2019/03/Hulk-181.jpg" alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <div class="btn-group btn-group-sm" role="group" aria-label="Small button group">
                                <button type="button" class="btn btn-light rounded-start">Add</button>
                                <button type="button" class="btn btn-light">Middle</button>
                                <button type="button" class="btn btn-light rounded-end">C</button>
                            </div>

                        </div>
                    </div>
                    <div class="box">
                        <img src="https://marketplace.canva.com/EAFjNCKkDPI/1/0/1003w/canva-portada-de-libro-de-fantasía-dramático-verde-Ct1fLal3ekY.jpg"
                            alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="https://marketplace.canva.com/EAFI171fL0M/1/0/1003w/canva-portada-de-libro-de-novela-ilustrado-color-azul-aqua-PQeWaiiK0aA.jpg"
                            alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="https://www.cuartomundo.cl/wp-content/uploads/2019/03/Hulk-181.jpg" alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="https://marketplace.canva.com/EAFjNCKkDPI/1/0/1003w/canva-portada-de-libro-de-fantasía-dramático-verde-Ct1fLal3ekY.jpg"
                            alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="https://marketplace.canva.com/EAFI171fL0M/1/0/1003w/canva-portada-de-libro-de-novela-ilustrado-color-azul-aqua-PQeWaiiK0aA.jpg"
                            alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="https://www.cuartomundo.cl/wp-content/uploads/2019/03/Hulk-181.jpg" alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="https://marketplace.canva.com/EAFjNCKkDPI/1/0/1003w/canva-portada-de-libro-de-fantasía-dramático-verde-Ct1fLal3ekY.jpg"
                            alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="https://marketplace.canva.com/EAFI171fL0M/1/0/1003w/canva-portada-de-libro-de-novela-ilustrado-color-azul-aqua-PQeWaiiK0aA.jpg"
                            alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="https://www.cuartomundo.cl/wp-content/uploads/2019/03/Hulk-181.jpg" alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="https://marketplace.canva.com/EAFjNCKkDPI/1/0/1003w/canva-portada-de-libro-de-fantasía-dramático-verde-Ct1fLal3ekY.jpg"
                            alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="https://marketplace.canva.com/EAFI171fL0M/1/0/1003w/canva-portada-de-libro-de-novela-ilustrado-color-azul-aqua-PQeWaiiK0aA.jpg"
                            alt="">
                        <div class="overlay">
                            <h3>Tittle</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis natus numquam minima
                                illo cupiditate exercitationem, quaerat ut.</p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
    <script src="JS/catalogo.js"></script>

</body>
</html>