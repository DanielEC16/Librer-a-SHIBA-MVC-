<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
  <link rel="shortcut icon" href="img/logo.png" type="image/x-icon" />
  <link rel="stylesheet" href="CSS/index.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
  <title>Shiba | Book Store</title>
</head>
<body>
  <header class="px-3 navbar sticky-top bg-body-tertiary">
    <div class="container-fluid d-flex justify-content-between">
      <a href="inicio.jsp" class="d-flex align-items-center text-decoration-none gap-2">
        <img src="img/logo.png" alt="logooo" class="logo"/>
        <span style="color: black;" class="fst-normal fs-5">Shiba Store</span>
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
        <div class="dropdown">
          <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle fs-5"
            data-bs-toggle="dropdown" aria-expanded="false">
            <i class="bi bi-person-circle fs-3" class="rounded-circle"></i>
          </a>
          <ul class="dropdown-menu dropdown-menu-end " data-bs-theme="dark">
            <li><a class="dropdown-item" href="#"><i class="bi bi-cart-fill"></i> Ver Carrito</a></li>
            <li><a class="dropdown-item" href="#"><i class="bi bi-gear-fill"></i> Configuracion</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item text-danger" href="#"><i class="bi bi-box-arrow-in-right"></i> Cerrar Sesion</a></li>
          </ul>
        </div>
        <div class="separators">
          <hr />
          <hr />
        </div>
        <div class="dropdown">
          <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle fs-5"
            data-bs-toggle="dropdown" aria-expanded="false">
            <i class="bi bi-cart-fill fs-3"></i>
          </a>
          <ul class="dropdown-menu dropdown-menu-end" data-bs-theme="dark">
            <li><a class="dropdown-item" href="#">Iniciar Sesion</a></li>
            <li><a class="dropdown-item" href="#">Registrarse</a></li>
          </ul>
        </div>
      </div>
    </div>
  </header>

  <section>
    <div id="carouselExampleInterval" class="carousel slide carousel-fade" data-bs-ride="carousel">
      <div class="carousel-inner portada-carrousel">
        <div class="carousel-item active" data-bs-interval="8000">
          <img src="img/portadashibaa.png" class="d-block w-100 shiba" alt="..." />
        </div>
        <div class="carousel-item" data-bs-interval="8000">
          <img
            src="https://iberoperu.vtexassets.com/assets/vtex.file-manager-graphql/images/751236fb-79a8-466b-91eb-be6d10877379___62e4aa809c829ce6f8d204d7882c09c5.png"
            class="d-block w-100" alt="..." />
        </div>
        <div class="carousel-item" data-bs-interval="8000">
          <img
            src="https://iberoperu.vtexassets.com/assets/vtex.file-manager-graphql/images/ae58c699-a17a-4e31-9e06-c22cd165d1c5___3ab46d33edbff366db1c2d0e38964b59.png"
            class="d-block w-100" alt="..." />
        </div>
        <div class="carousel-item" data-bs-interval="8000">
          <img
            src="https://iberoperu.vtexassets.com/assets/vtex.file-manager-graphql/images/f62be741-1cbf-47cf-baa2-fc1847cfb52b___c6920254363b3ed3bd2d2e022fbe6a33.png"
            class="d-block w-100" alt="..." />
        </div>
        <div class="carousel-item" data-bs-interval="8000">
          <img src="img/proy.png" class="d-block w-100" alt="..." />
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval"
        data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval"
        data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </section>

  <main class="generos-lib pt-5 mx-auto d-flex flex-column gap-5">
    <section class="genero">
      <div class="container">
        <div class="row align-items-center">
          <div class="col categoria">
            <img src="img/logo.png" class="img-cat" />
            <p class="tittle-cat">Los libros mas vendidos</p>
            <hr class="genero-hr" />
          </div>
          <div class="col-4 col-sm-3 col-lg-2 d-flex justify-content-center">
            <button class="btn btn-outline-secondary btn-md px-4">
              Ver todo
            </button>
          </div>
        </div>
      </div>
      <div class="container-swipper">
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-container mySwiper">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img src="https://descubierta.es/wp-content/uploads/2022/06/Cover.jpg" alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="https://cordexizdesign.es/wp-content/uploads/2020/10/brujas_portada_predisenada.jpg" alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img
                src="https://marketplace.canva.com/EAFjNCKkDPI/1/0/1003w/canva-portada-de-libro-de-fantas%C3%ADa-dram%C3%A1tico-verde-Ct1fLal3ekY.jpg"
                alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="https://media.revistaad.es/photos/60c227359ae22619e08751b2/master/w_1600%2Cc_limit/247747.jpg"
                alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img
                src="https://marketplace.canva.com/EAFI171fL0M/1/0/1003w/canva-portada-de-libro-de-novela-ilustrado-color-azul-aqua-PQeWaiiK0aA.jpg"
                alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>

            <div class="swiper-slide">
              <img
                src="https://marketplace.canva.com/EAFGf9027eM/1/0/1003w/canva-portada-libro-infantil-bosque-ilustrado-azul-P3McSjgOm1I.jpg"
                alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="genero">
      <div class="container">
        <div class="row align-items-center">
          <div class="col categoria">
            <img src="img/logo.png" class="img-cat" />
            <p class="tittle-cat">Los libros mas vendidos</p>
            <hr class="genero-hr" />
          </div>
          <div class="col-4 col-sm-3 col-lg-2 d-flex justify-content-center">
            <button class="btn btn-outline-secondary btn-md px-4">
              Ver todo
            </button>
          </div>
        </div>
      </div>

      <div class="container-swipper">
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-container mySwiper">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img src="https://www.oldskull.net/wp-content/uploads/2014/03/infinite-crisis-superman.jpg" alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="https://www.cuartomundo.cl/wp-content/uploads/2019/03/Hulk-181.jpg" alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="https://hablandodecomics.wordpress.com/wp-content/uploads/2012/01/portada-95-x-men.jpg"
                alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="https://www.oldskull.net/wp-content/uploads/2007/04/portadas-comics-oldskull-4.jpg" alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img
                src="https://www.smashmexico.com.mx/wp-content/uploads/2022/08/primer-comic-portada-variante-historia-mos-var.jpg"
                alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>

            <div class="swiper-slide">
              <img
                src="https://sm.ign.com/t/ign_es/screenshot/b/bsilver-su/bsilver-surfer-vol-1-4bbrbrbdrawn-byb-john-buscemabrbrwhen-i_uyby.1080.jpg"
                alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="genero">
      <div class="container">
        <div class="row align-items-center">
          <div class="col categoria">
            <img src="img/logo.png" class="img-cat" />
            <p class="tittle-cat">Los libros mas vendidos</p>
            <hr class="genero-hr" />
          </div>
          <div class="col-4 col-sm-3 col-lg-2 d-flex justify-content-center">
            <button class="btn btn-outline-secondary btn-md px-4">
              Ver todo
            </button>
          </div>
        </div>
      </div>

      <div class="container-swipper">
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-container mySwiper">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img src="https://areajugones.sport.es/wp-content/uploads/2021/01/imagen-2021-01-27-105200.jpg" alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="https://static.listadomanga.com/d0199b31edc12dd8ec8abd9141693931.jpg" alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="https://somoskudasai.com/wp-content/uploads/2021/02/4yI8LVGA_2x.jpg" alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="https://pm1.aminoapps.com/6046/f6423b3a4f0358beca6bef5131b227697970215b_hq.jpg" alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="https://bazingacomics.cl/wp-content/uploads/2022/05/My-Hero-Academia-30.jpg" alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>

            <div class="swiper-slide">
              <img
                src="https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2020/03/dragon-ball-super-portada-tomo-12-vegeta-yadrat-1906501.jpg?tf=3840x"
                alt="" />
              <div class="card-description">
                <div class="card-title">
                  <h4>Descripción</h4>
                </div>
                <div class="card-text">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Eum enim possimus dolorum non, modi sunt ips.
                  </p>
                </div>
                <div class="card-link">
                  <a href="#">Ver más</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

  <footer class="d-flex flex-wrap justify-content-between align-items-center p-5 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
        <img src="img/logo.png" class="logo" alt="" />
      </a>
      <span class="mb-3 mb-md-0 text-body-secondary">© 2023 Company, Inc</span>
    </div>
    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex fs-3">
      <li class="ms-3">
        <a class="text-body-secondary" href="#"><i class="bi bi-facebook"></i></a>
      </li>
      <li class="ms-3">
        <a class="text-body-secondary" href="#"><i class="bi bi-whatsapp"></i></a>
      </li>
      <li class="ms-3">
        <a class="text-body-secondary" href="#"><i class="bi bi-twitter-x"></i></a>
      </li>
      <li class="ms-3">
        <a class="text-body-secondary" href="#"><i class="bi bi-instagram"></i></a>
      </li>
    </ul>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
    integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
    crossorigin="anonymous"></script>

  <script src="JS/index.js"></script>
</body>
</html>