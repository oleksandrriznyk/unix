<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <title>Shop Homepage - Start Bootstrap Template</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/shop-homepage.css" rel="stylesheet">

    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/validation.jquery.js"></script>
    <script src="js/products.js"></script>



</head>

<body>

    <%@include file="/WEB-INF/jspf/header.jspf" %>



    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-xs-3 col-min">
                <h4>Main menu</h4>
                <div class="list-group">
                    <a href="#" class="list-group-item">All vehicles</a>
                    <a href="#" class="list-group-item">Cars</a>
                    <a href="#" class="list-group-item">Trucks</a>
                    <a href="#" class="list-group-item">Boats</a>
                </div>
            </div>

            <div class="col-md-9">


                <div class="row">
                </br></br>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
						<div style="padding:5px;">
							<img src="img/1.jpg" alt="">
						</div>
                            <div class="caption">
                                <h4><a href="#">Subaru Impreza</a>
                                </h4>
                                <p>
									<b>Price: </b>20 000 $</br>
									<b>Creation year: </b>2012</br>
									<b>Weight: </b>2000 kg</br>								
								</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
						<div style="padding:5px;">
							<img src="img/2.jpg" alt="">
						</div>
                            <div class="caption">
                                <h4><a href="#">Jaguar XK Cabrio </a>
                                </h4>
                                <p>
									<b>Price: </b>26 500 $</br>
									<b>Creation year: </b>2006</br>
									<b>Weight: </b>1800 kg</br>								
								</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
						<div style="padding:5px;">
							<img src="img/3.jpg" alt="">
						</div>
                            <div class="caption">
                                <h4><a href="#">Mercedes-Benz ML 350</a>
                                </h4>
                                <p>
									<b>Price: </b>65 500 $</br>
									<b>Creation year: </b>2012</br>
									<b>Weight: </b>3500 kg</br>								
								</p>
                            </div>
                        </div>
                    </div>
					<div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
						<div style="padding:5px;">
							<img src="img/4.jpg" alt="">
						</div>
                            <div class="caption">
                                <h4><a href="#">Daf XF</a>
                                </h4>
                                <p>
									<b>Price: </b>29 617 $</br>
									<b>Creation year: </b>2006</br>
									<b>Weight: </b>8000 kg</br>								
								</p>
                            </div>
                        </div>
                    </div>
					<div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
						<div style="padding:5px;">
							<img src="img/5.jpg" alt="">
						</div>
                            <div class="caption">
                                <h4><a href="#">Lazzara 80</a>
                                </h4>
                                <p>
									<b>Price: </b>2 000 000 $</br>
									<b>Creation year: </b>1960</br>
									<b>Weight: </b>20000 kg</br>
								</p>
                            </div>
                        </div>
                    </div>
					<div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
						<div style="padding:5px;">
							<img src="img/6.jpg" alt="">
						</div>
                            <div class="caption">
                                <h4><a href="#">Twister</a>
                                </h4>
                                <p>
									<b>Price: </b>120 000 $</br>
									<b>Creation year: </b>1967</br>
									<b>Weight: </b>30000 kg</br>
								</p>
                            </div>
                        </div>
                    </div>
					
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; EPAM</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
