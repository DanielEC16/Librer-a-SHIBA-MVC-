<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="Modelo.*" %>
<%@ page import="ModeloDAO.*" %>
<%@ page import="java.util.Iterator" %>

<%

int i=1;

// Tabla Cliente 
ClienteDAO cliDao = new ClienteDAO();
List<BCliente>listCli=cliDao.listar();
Iterator<BCliente>iterCli=listCli.iterator();
BCliente cli=null;

// Tabla Administrador 
AdminDAO admDao = new AdminDAO();
List<BAdministradores>listAdm=admDao.listar();
Iterator<BAdministradores>iterAdm=listAdm.iterator();
BAdministradores adm=null;

// Tabla Roles
RolDAO rolDao = new RolDAO();
List<BRol>listRol = rolDao.listar();
Iterator<BRol>iterRol=listRol.iterator();
BRol rol=null;

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
    <link rel="stylesheet" href="CSS/mantenimieto.css" />
<title>Insert title here</title>
</head>
<body>
    <div class="admin-dashboard">
        <div class="ds-left-menu">
            <button class="btn-menu">
                <i class="fa-solid fa-circle-chevron-left"></i>
            </button>

            <div class="ds-perfil">
                <div class="foto">
                    <img src="https://raw.githubusercontent.com/juliocesardw/dasboard/main/perfil.jpg" alt="" />
                </div>
                <div class="info-perfil">
                    <span>Admin</span>
                    <h3>Daniel</h3>
                </div>
            </div>

            <div class="ds-menu">
                <ul class="ps-0">
                    <li>
                        <a href="#" data-target="inicio" class="active"><i class="fa-solid fa-house"></i><span>Inicio</span></a>
                    </li>
                    <li>
                        <a href="#" data-target="productos"><i
                                class="fa-solid fa-truck-fast"></i><span>Productos</span></a>
                    </li>
                    <li>
                        <a href="#" data-target="ventas"><i
                                class="fa-solid fa-basket-shopping"></i><span>Ventas</span></a>
                    </li>
                    <li>
                        <a href="#" data-target="usuarios"><i class="fa-solid fa-user"></i><span>Usuarios</span></a>
                    </li>
                    <li>
                        <a href="#" data-target="ajustes"><i class="fa-solid fa-sliders"></i><span>Ajustes</span></a>
                    </li>
                </ul>
            </div>

            <div class="sign-off">
                <a href="#" class="btn-sign-off">
                    <i class="fa-solid fa-arrow-right-to-bracket"></i>
                    <span>Cerrar Sesión</span>
                </a>
            </div>
        </div>

        <div class="ds-panel">


            <div id="inicio" class="content active home-section">
                <div class="home-section">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-5 d-flex justify-content-center align-items-center overflow-hidden">
                                <i class="fa-solid fa-dollar-sign"></i>
                            </div>
                            <div class="col-7">
                                <div class="card-body">
                                    <h5 class="card-header">Card title</h5>
                                    <p class="card-text">Tt longer.</p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins
                                            ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-5 d-flex justify-content-center align-items-center overflow-hidden">
                                <i class="fa-solid fa-dollar-sign"></i>
                            </div>
                            <div class="col-7">
                                <div class="card-body">
                                    <h5 class="card-header">Card title</h5>
                                    <p class="card-text">Tt longer.</p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins
                                            ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-5 d-flex justify-content-center align-items-center overflow-hidden">
                                <i class="fa-solid fa-dollar-sign"></i>
                            </div>
                            <div class="col-7">
                                <div class="card-body">
                                    <h5 class="card-header">Card title</h5>
                                    <p class="card-text">Tt longer.</p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins
                                            ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="productos" class="content">
            
                <div class="boton-agregar">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#exampleModal1">
                        Agregar Producto
                    </button>
                    <!-- Modal -->
                    <div class="modal fade text-white" id="exampleModal1" tabindex="-1"
                        aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-theme="dark">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2 class="modal-title fs-5" id="exampleModalLabel">
                                        DATOS DEL LIBRO
                                    </h2>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form class="row g-3 needs-validation" novalidate>
                                        <div class="col-6">
                                            <label for="validationCustom01" class="form-label">Titulo del Libro</label>
                                            <input type="text" class="form-control" id="validationCustom01"
                                                placeholder="Titulo del libro" required />
                                        </div>
                                        <div class="col-6">
                                            <label for="validationCustom02" class="form-label">Autor</label>
                                            <input type="text" class="form-control" id="validationCustom02"
                                                placeholder="Autor del libro" required />
                                        </div>
                                        <div class="col-12">
                                            <label for="validationTextarea" class="form-label">Reseña del libro</label>
                                            <textarea class="form-control" id="validationTextarea" rows="2"
                                                placeholder="Una reseña del libro" required></textarea>
                                        </div>
                                        <div class="col-md-4">
                                            <label for="validationCustomUsername" class="form-label">Nº Paginas</label>
                                            <input type="number" class="form-control" id="validationCustom04" min="1"
                                                placeholder="0" required>
                                        </div>
                                        <div class="col-md-4">
                                            <label for="validationCustom03" class="form-label">Stock</label>
                                            <input type="number" class="form-control" id="validationCustom05" min="1"
                                                placeholder="0" required />
                                        </div>
                                        <div class="col-4">
                                            <label for="validationCustom03" class="form-label">Precio</label>
                                            <div class="input-group">
                                                <span class="input-group-text" id="inputGroupPrepend3">S/.</span>
                                                <input type="number" class="form-control" id="validationCustom03"
                                                    min="0.01" step="0.01" placeholder="0.00" required>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <label class="form-label">Generos</label>
                                            <br>

                                            <input type="checkbox" class="btn-check" id="btn-check-1" checked>
                                            <label class="btn" for="btn-check-1">Comedia</label>

                                            <input type="checkbox" class="btn-check" id="btn-check-2">
                                            <label class="btn" for="btn-check-2">Fantasia</label>

                                            <input type="checkbox" class="btn-check" id="btn-check-3">
                                            <label class="btn" for="btn-check-3">Romantica</label>

                                            <input type="checkbox" class="btn-check" id="btn-check-4">
                                            <label class="btn" for="btn-check-4">Aventuras</label>

                                            <input type="checkbox" class="btn-check" id="btn-check-5">
                                            <label class="btn" for="btn-check-5">Fantasìa</label>

                                            <input type="checkbox" class="btn-check" id="btn-check-6">
                                            <label class="btn" for="btn-check-6">Terror</label>
                                        </div>
                                        <div class="col-12 mb-3">
                                            <label class="form-label">Imagen del producto</label>
                                            <label class="picture p-3" for="picture__input" tabIndex="0">
                                                <span class="picture__image"></span>
                                            </label>

                                            <input type="file" class="form-control" aria-label="file example"
                                                name="picture__input" id="picture__input" required>
                                        </div>
                                        <div class="col-12">
                                            <button class="btn btn-primary" type="submit">
                                                Submit form
                                            </button>
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                                Close
                                            </button>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
         
         
            </div>

            <div id="ventas" class="content">



            </div>
            
            
            
            
            
            <div id="usuarios" class="content">
            	<div>
            		<h3>Lista de Clientes</h3>
            	</div>
            	<hr>
                <div class="tabla-clientes">
                    <div class="table-container">
                        <table class="align-middle content-table">
                            <thead>
                                <tr>
                                    <th>N°</th>
                                    <th>Foto</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Telefono</th>
                                    <th>Correo</th>
                                    <th>Fecha de Registro</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            	<%
                            		i=1;
                                     while(iterCli.hasNext()){
                                     	cli=iterCli.next();
                            	%>
                            	<tr>
                            		<th><%= i %></th>
                            		<td>
                            			<img src="ImgAdmin?imagen=Cliente&id=<%= cli.getId() %>" class="foto-admin" />
									</td>
                            		<td><%= cli.getNom() %></td>
                            		<td><%= cli.getApe() %></td>
                            		<td><%= cli.getTel() %></td>
                            		<td><%= cli.getCorreo() %></td>
                            		<td><%= cli.getFecha_reg() %></td>
                            		<td>
                                        <button class="btn btn-primary">Editar</button>
                                        <button class="btn btn-danger">Eliminar</button>
                                    </td>
                            	</tr>
                            	<%i++;}%>
                            </tbody>
                        </table>
                    </div>
                </div>

				<br>

				<div class="d-flex justify-content-between">
				 <h3>Lista de Administradores</h3>
				 <div class="boton-agregar">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#exampleModal2">
                        Agregar administrador
                    </button>
                    
                    <%@ include file="commons/form-admin.jspf" %>

     	           </div>
				</div>
            	<hr>
                <div class="tabla-administradores">
                    <div class="table-container">
                        <table class="align-middle content-table">
                            <thead>
                                <tr>
                                    <th scope="col">N°</th>
                                    <th scope="col">Foto</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Apellido</th>
                                    <th scope="col">Rol</th>
                                    <th scope="col">Status</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                                    i=1;
                                     while(iterAdm.hasNext()){
                                     	adm=iterAdm.next();
                            	%>
                            	<tr>
                            		<th><%= i %></th>
                            		<td>
    									<img src="ImgAdmin?imagen=Administrador&id=<%= adm.getId() %>" class="foto-admin" />
									</td>
                            		<td><%= adm.getNombre()%></td>
                            		<td><%= adm.getApellido()%></td>
                            		<td><%= adm.getRolName()%></td>
                            		<td>
                            			<%
									        if (adm.getActivo() == "1") { %>
									            <span class="badge rounded-pill text-bg-success">Activo</span>
									    <%
									        } else { %>
									            <span class="badge rounded-pill text-bg-danger">Inactivo</span>
									    <%
									        }
									    %>
                            		</td>
                            		<td>
                                        <a href="SAdministrador?accion=Editar&id=<%= adm.getId() %>" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editAdmin">Editar</a>                                      
                                        <a href="SAdministrador?accion=Eliminar&id=<%= adm.getId() %>" class="btn btn-danger">Eliminar</a>
                                    </td>
                            	</tr>
                            	<%
                            	i++;}
                            	%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
            

            <div id="ajustes" class="content">
               
                <div class="tabla-roles">
                    <div class="table-container">
                        <table class="align-middle content-table">
                            <thead>
                                <tr>
                                    <th scope="col">N°</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Descripción</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                                    i=1;
                                    iterRol = listRol.iterator();
                                    while(iterRol.hasNext()){
                                    rol=iterRol.next();
                            	%>
                            	<tr>
                            		<td><%= i %></td>
                            		<td><%= rol.getNombre()%></td>
                            		<td><%= rol.getDescripcion()%></td>
                            		<td>
                                        <button class="btn btn-primary">Editar</button>
                                        <button class="btn btn-danger">Eliminar</button>
                                    </td>
                            	</tr>
                            	<%
                            	i++;}
                            	%>

                            
                            </tbody>
                        </table>
                    </div>
                </div>
            
            </div>


        </div>


    </div>

    <script src="JS/mantenimiento.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>

    <script src="https://kit.fontawesome.com/75a5f6846b.js" crossorigin="anonymous"></script>
    
    
    
    
    
</body>
</html>