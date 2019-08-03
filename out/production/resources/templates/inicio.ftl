<!DOCTYPE html>
    <html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" href="//cdn.jsdelivr.net/bootstrap.tagsinput/0.4.2/bootstrap-tagsinput.css"/>
        <title>Blog - Practica 3</title>

        <!-- Bootstrap core CSS -->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="../css/blog-home.css" rel="stylesheet">

    </head>

    <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="/inicio">Inicio</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/agregarPost">Agregar Post</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/agregarUsuario">Agregar Usuario</a>
                    </li>

                    <#if (usuario??)>
                         <li class="nav-item">
                             <a class="nav-link" href="/logOut">Salir</a>
                         </li>
                    <#else>
                     <li class="nav-item">
                         <a class="nav-link" href="/">Log In</a>
                     </li>
                    </#if>



                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-8">

                <h1 class="my-4">${titulo}</h1>


        <#list list as articulo>
              <!-- Blog Post -->
              <div class="card mb-4">
                  <div class="card-body">
                      <h2 class="card-title">${articulo.titulo}</h2>
                      <p class="card-text">${articulo.cuerpo}</p>
                      <a href="/verMas/${articulo.id}" style="float: right" class="btn btn-primary">Leer más &rarr;</a>
                  </div>
                  <div>

                      <#assign x = articulo.id>
                      <#list etiquetas as etiqueta>
                          <#assign y = etiqueta.articulo.id>
                          <#if (x == y?number) && etiqueta.articulo?? >
                              <span class="badge badge-primary">${etiqueta.etiqueta}</span>
                          </#if>

                      </#list>
                  </div>
                  <div class="card-footer text-muted">
                      Publicado el ${articulo.fecha} por
                      <a href="/ver/${articulo.autor.id}">${articulo.autor.nombre}</a>
                  </div>
              </div>
        </#list>

                <!-- Pagination -->
                <ul class="pagination justify-content-center mb-4">
                    <li class="page-item">
                        <a class="page-link" href="#">&larr; Older</a>
                    </li>
                    <li class="page-item disabled">
                        <a class="page-link" href="#">Newer &rarr;</a>
                    </li>
                </ul>

            </div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Practica 3 - 2019</p>
        </div>
        <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../vendor/bootstrap/js/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../vendor/bootstrap/js/my-login.js"></script>

    </body>

    </html>
