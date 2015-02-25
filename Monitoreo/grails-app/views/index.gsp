<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Instrumentación</title>
	
	<asset:stylesheet src="bootstrap.min.css"/>
	<asset:stylesheet src="metisMenu.min.css"/>
    <asset:stylesheet src="timeline.css"/>
    <asset:stylesheet src="sb-admin-2.css"/>
    <asset:stylesheet src="morris.css"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="angular.js"/>
    <asset:javascript src="angular-route.js"/>
    <asset:javascript src="app.js"/>

</head>

<body ng-app="Monitoreo" ng-controller="MainCtrl">

    <div id="wrapper">            
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Monitoreo de Variables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-comments fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">{{temperatura}} °C</div>
                                    <div>Temperatura Actual</div>
                                </div>
                            </div>
                        </div>
                        <a href="#Temperatura">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Gráfica</span>
                                <span class="pull-right"><asset:image  src="graph.jpg"/></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">{{velocidad}} m/s</div>
                                    <div>Velocidad Angular</div>
                                </div>
                            </div>
                        </div>
                        <a href="#VelocidadAngular">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Gráfica</span>
                                <span class="pull-right"><asset:image  src="graph.jpg"/></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">{{intensidad}} luxes</div>
                                    <div>Intensidad Luminiosa</div>
                                </div>
                            </div>
                        </div>
                        <a href="#IntensidadLuz">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Gráfica</span>
                                <span class="pull-right"><asset:image  src="graph.jpg"/></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>            
            </div>
            
            <ng-view></ng-view>
            <!-- /.row -->
            <div class="row">
                <!-- /.panel -->
                     <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> Integrantes
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <ul class="timeline">
                                <li>
                                    <div class="timeline-badge"><i class="fa fa-check"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Sarai Atlixqueño Velazquez</h4>   
                                        </div>
                                        
                                    </div>
                                </li>
                                <li class="timeline-inverted">
                                    <div class="timeline-badge warning"><i class="fa fa-credit-card"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Ruben Loyo Guarneros</h4>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="timeline-badge danger"><i class="fa fa-bomb"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Alejandro Ortíz Chávez</h4>
                                        </div>
                                    </div>
                                </li>                                
                            </ul>
                        </div>
                        <!-- /.panel-body -->
                    </div>
            </div>
        </div>        
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

	<asset:javascript src="metisMenu.min.js"/>
	<asset:javascript src="raphael-min.js"/>
	<asset:javascript src="morris.min.js"/>	
	<asset:javascript src="sb-admin-2.js"/>
    <asset:javascript src="jquery.canvasjs.js"/>


</body>

</html>
