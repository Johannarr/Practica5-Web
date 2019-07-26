<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> ${titulo}  </title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link href="css/menu.css" rel="stylesheet">

</head>

<body>

<div id="wrapper">

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div style="float : left">

                    <div id="tituloMenu" style="float: left;">
                        <style>
                            h1 { color:darkblue; }
                        </style>

                        <h1 id="titulo">Estudiantes</h1>

                    </div>


                   <br>


                </div>


                <table class="table">
                    <thead>
                        <tr>
                            <th>Matricula</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Telefono</th>
                            <th>Editar</th>
                            <th>Eliminar</th>
                            <th>Visualizar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <#assign x = 0>
                        <#list estudiantes as estudiante>
                            <tr>

                                <td>${estudiante.matricula?string["0"]}</td>
                                <td>${estudiante.nombre}</td>
                                <td>${estudiante.apellido}</td>
                                <td>${estudiante.telefono}</td>
                                <td><a href="/editar/${x}" class="btn"><i class="fa fa-edit" style="font-size:16px;color:darkblue"></i></a></td>
                                <td><a href="/eliminar/${x}"  class="btn"><i class="fa fa-trash" style="font-size:16px;color:darkred"></i></a></td>
                                <td><a href="/ver/${x}" class="btn"><i class="fa fa-eye" style="font-size:16px;color:darkblue"></i></a></td>

                            </tr>
                        <#assign x++>
                        </#list>
                    </tbody>
                </table>

                <td><a href="/nuevoEstudiante" class="btn btn-primary"><i class="btn btn"> Nuevo Estudiante</i></a></td>

            </div>
        </div>
        <!-- /#page-content-wrapper -->

</div>
    <!-- /#wrapper -->

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>

</html>
