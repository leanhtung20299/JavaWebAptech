<%-- 
    Document   : home
    Created on : May 11, 2020, 11:04:26 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AdminLTE 3 | Widgets</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Font Awesome -->
        <jsp:include flush="true" page="css2.jsp"/>
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <!-- Navbar -->
            <jsp:include flush="true" page="header2.jsp"/>
            <!-- /.navbar -->

            <!-- Main Sidebar Container -->
            <jsp:include flush="true" page="menu2.jsp"/>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Widgets</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Widgets</li>
                                </ol>
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <!-- left column -->
                           
                            <!--/.col (left) -->
                            <!-- right column -->

                            <div class="col-md-6">
                                <!-- general form elements disabled -->
                                <div class="card card-warning">
                                    <div class="card-header">
                                        <h3 class="card-title">Thêm mới sản phẩm</h3>
                                    </div>
                                    <!-- /.card-header -->



                                    <div class="card-body">

                                        <form:form  method="post" modelAttribute="c" enctype="multipart/form-data">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <!-- text input -->
                                                    <div class="form-group">
                                                        <label>Tên sản phẩm:</label>

                                                        <form:select path="maSP.maSP">
                                                            <c:forEach items="${allsanpham}" var="s">

                                                                <form:option value="${s.maSP}">${s.tenSP}</form:option> 

                                                            </c:forEach>
                                                        </form:select>

                                                    </div>
                                                </div>




                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>Màu sắc:</label>
                                                        <form:select path="maMauSac.maMauSac">
                                                            <c:forEach items="${allmausac}" var="mausac">

                                                                <form:option value="${mausac.maMauSac}">${mausac.tenMauSac}</form:option>

                                                            </c:forEach>
                                                        </form:select>
                                                    </div>
                                                </div>

                                            </div>


                                            <div class="row">

                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>Kích thước</label>
                                                        <form:select path="maKichThuoc.maKichThuoc">
                                                            <c:forEach items="${allkichthuoc}" var="kichthuoc">
                                                                <form:option value="${kichthuoc.maKichThuoc}">${kichthuoc.tenKichThuoc} mm</form:option>
                                                            </c:forEach>
                                                        </form:select>
                                                    </div>
                                                </div>


                                                <!--                    <div class="col-sm-6">
                                                                      <div class="form-group">
                                                                        <label>Số lượng</label>
                                                <%--<form:input path="soLuong"/>--%> 
                                              </div>
                                                
                                            </div>-->
                                            </div>

                                            <div class="form-group">
                                                <label class="col-form-label">Số lượng</label>
                                                <form:input class="form-control is-valid" path="soLuong" placeholder="Số lượng ..."/> 
                                            </div>

                                            <div class="form-group">
                                                <label class="col-form-label">Giá gốc</label>
                                                <form:input class="form-control is-valid" path="giaGoc" placeholder="Số lượng ..."/> 
                                            </div>

                                            <div class="form-group">
                                                <label class="col-form-label">Giá khuyến mãi</label>
                                                <form:input class="form-control is-valid" path="giaKM" placeholder="Giá ..."/> 
                                            </div>

                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <!-- checkbox -->
                                                    <label class="col-form-label">Ghi chú</label>
                                                    <div class="form-group">
                                                        <form:textarea class="form-control" rows="5" path="ghiChu"/>
                                                    </div>
                                                </div> 
                                                <div class="col-sm-6">
                                                    <!-- radio -->
                                                    <!--                                                    <div class="form-group">
                                                                                                            <div class="form-check">
                                                                                                                <input class="form-check-input" type="radio" name="radio1">
                                                                                                                <label class="form-check-label">Radio</label>
                                                                                                            </div>
                                                                                                            <div class="form-check">
                                                                                                                <input class="form-check-input" type="radio" name="radio1" checked>
                                                                                                                <label class="form-check-label">Radio checked</label>
                                                                                                            </div>
                                                                                                            <div class="form-check">
                                                                                                                <input class="form-check-input" type="radio" disabled>
                                                                                                                <label class="form-check-label">Radio disabled</label>
                                                                                                            </div>
                                                                                                        </div>-->
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-form-label">Hình ảnh</label>
                                                <form:input type="file" path="imageSP"/>
                                            </div>

                                            <!--                                            <div class="row">
                                                                                            <div class="col-sm-6">
                                                                                                 select 
                                                                                                <div class="form-group">
                                                                                                    <label>Select</label>
                                                                                                    <select class="form-control">
                                                                                                        <option>option 1</option>
                                                                                                        <option>option 2</option>
                                                                                                        <option>option 3</option>
                                                                                                        <option>option 4</option>
                                                                                                        <option>option 5</option>
                                                                                                    </select>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-sm-6">
                                                                                                <div class="form-group">
                                                                                                    <label>Select Disabled</label>
                                                                                                    <select class="form-control" disabled>
                                                                                                        <option>option 1</option>
                                                                                                        <option>option 2</option>
                                                                                                        <option>option 3</option>
                                                                                                        <option>option 4</option>
                                                                                                        <option>option 5</option>
                                                                                                    </select>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>-->

                                            <div class="form-group">
                                                    <input type="submit" value="Thêm"/>
                                                    <input type="reset" value="Xóa"/>                                    
                                            </div>

                                        </form:form>
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                        
                            </div>
                             <div class="col-md-6">
                             
                                        <div class="card card-primary">
                                          <div class="card-header">
                                            <h3 class="card-title">Quick Example</h3>
                                          </div>
                                           
                                          <form role="form">
                                            <div class="card-body">
                                              <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                              </div>
                                              <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                              </div>
                                              <div class="form-group">
                                                <label for="exampleInputFile">File input</label>
                                                <div class="input-group">
                                                  <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="exampleInputFile">
                                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                                  </div>
                                                  <div class="input-group-append">
                                                    <span class="input-group-text" id="">Upload</span>
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                              </div>
                                            </div>
                             <!--/.card-body--> 

                                            <div class="card-footer">
                                              <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                          </form>
                                        </div>
                             <!--/.card--> 

                          
                                        <div class="card card-success">
                                          <div class="card-header">
                                            <h3 class="card-title">Different Height</h3>
                                          </div>
                                          <div class="card-body">
                                            <input class="form-control form-control-lg" type="text" placeholder=".form-control-lg">
                                            <br>
                                            <input class="form-control" type="text" placeholder="Default input">
                                            <br>
                                            <input class="form-control form-control-sm" type="text" placeholder=".form-control-sm">
                                          </div>
                                           <!--/.card-body--> 
                                        </div>
                                         <!--/.card--> 
                            
                                        <div class="card card-danger">
                                          <div class="card-header">
                                            <h3 class="card-title">Different Width</h3>
                                          </div>
                                          <div class="card-body">
                                            <div class="row">
                                              <div class="col-3">
                                                <input type="text" class="form-control" placeholder=".col-3">
                                              </div>
                                              <div class="col-4">
                                                <input type="text" class="form-control" placeholder=".col-4">
                                              </div>
                                              <div class="col-5">
                                                <input type="text" class="form-control" placeholder=".col-5">
                                              </div>
                                            </div>
                                          </div>
                                           <!--/.card-body--> 
                                        </div>
                             <!--/.card--> 

                             <!--Input addon--> 
                                        <div class="card card-info">
                                          <div class="card-header">
                                            <h3 class="card-title">Input Addon</h3>
                                          </div>
                                          <div class="card-body">
                                            <div class="input-group mb-3">
                                              <div class="input-group-prepend">
                                                <span class="input-group-text">@</span>
                                              </div>
                                              <input type="text" class="form-control" placeholder="Username">
                                            </div>
                            
                                            <div class="input-group mb-3">
                                              <input type="text" class="form-control">
                                              <div class="input-group-append">
                                                <span class="input-group-text">.00</span>
                                              </div>
                                            </div>
                            
                                            <div class="input-group">
                                              <div class="input-group-prepend">
                                                <span class="input-group-text">$</span>
                                              </div>
                                              <input type="text" class="form-control">
                                              <div class="input-group-append">
                                                <span class="input-group-text">.00</span>
                                              </div>
                                            </div>
                            
                                            <h4>With icons</h4>
                            
                                            <div class="input-group mb-3">
                                              <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                              </div>
                                              <input type="email" class="form-control" placeholder="Email">
                                            </div>
                            
                                            <div class="input-group mb-3">
                                              <input type="text" class="form-control">
                                              <div class="input-group-append">
                                                <span class="input-group-text"><i class="fas fa-check"></i></span>
                                              </div>
                                            </div>
                            
                                            <div class="input-group">
                                              <div class="input-group-prepend">
                                                <span class="input-group-text">
                                                  <i class="fas fa-dollar-sign"></i>
                                                </span>
                                              </div>
                                              <input type="text" class="form-control">
                                              <div class="input-group-append">
                                                <div class="input-group-text"><i class="fas fa-ambulance"></i></div>
                                              </div>
                                            </div>
                            
                                            <h5 class="mt-4 mb-2">With checkbox and radio inputs</h5>
                            
                                            <div class="row">
                                              <div class="col-lg-6">
                                                <div class="input-group">
                                                  <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                      <input type="checkbox">
                                                    </span>
                                                  </div>
                                                  <input type="text" class="form-control">
                                                </div>
                                                 <!--/input-group--> 
                                              </div>
                                               <!--/.col-lg-6--> 
                                              <div class="col-lg-6">
                                                <div class="input-group">
                                                  <div class="input-group-prepend">
                                                    <span class="input-group-text"><input type="radio"></span>
                                                  </div>
                                                  <input type="text" class="form-control">
                                                </div>
                                                 <!--/input-group--> 
                                              </div>
                                               <!--/.col-lg-6--> 
                                            </div>
                                             /.row 
                            
                                            <h5 class="mt-4 mb-2">With buttons</h5>
                            
                                            <p>Large: <code>.input-group.input-group-lg</code></p>
                            
                                            <div class="input-group input-group-lg mb-3">
                                              <div class="input-group-prepend">
                                                <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
                                                  Action
                                                </button>
                                                <ul class="dropdown-menu">
                                                  <li class="dropdown-item"><a href="#">Action</a></li>
                                                  <li class="dropdown-item"><a href="#">Another action</a></li>
                                                  <li class="dropdown-item"><a href="#">Something else here</a></li>
                                                  <li class="dropdown-divider"></li>
                                                  <li class="dropdown-item"><a href="#">Separated link</a></li>
                                                </ul>
                                              </div>
                                               <!--/btn-group--> 
                                              <input type="text" class="form-control">
                                            </div>
                                             
                            
                                            <p>Normal</p>
                                            <div class="input-group mb-3">
                                              <div class="input-group-prepend">
                                                <button type="button" class="btn btn-danger">Action</button>
                                              </div>
                                               
                                              <input type="text" class="form-control">
                                            </div>
                                             
                                            <p>Small <code>.input-group.input-group-sm</code></p>
                                            <div class="input-group input-group-sm">
                                              <input type="text" class="form-control">
                                              <span class="input-group-append">
                                                <button type="button" class="btn btn-info btn-flat">Go!</button>
                                              </span>
                                            </div>
                                             
                                          </div>
                                           
                                        </div>
                              
                             <!--Horizontal Form--> 
                                        <div class="card card-info">
                                          <div class="card-header">
                                            <h3 class="card-title">Horizontal Form</h3>
                                          </div>
                                           /.card-header 
                                           form start 
                                          <form class="form-horizontal">
                                            <div class="card-body">
                                              <div class="form-group row">
                                                <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                                                <div class="col-sm-10">
                                                  <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                                                </div>
                                              </div>
                                              <div class="form-group row">
                                                <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                                                <div class="col-sm-10">
                                                  <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                                </div>
                                              </div>
                                              <div class="form-group row">
                                                <div class="offset-sm-2 col-sm-10">
                                                  <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck2">
                                                    <label class="form-check-label" for="exampleCheck2">Remember me</label>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                             
                                            <div class="card-footer">
                                              <button type="submit" class="btn btn-info">Sign in</button>
                                              <button type="submit" class="btn btn-default float-right">Cancel</button>
                                            </div>
                                             
                                          </form>
                                        </div>
                            

                            </div>
                            <!--/.col (right) -->
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </section>

                <a id="back-to-top" href="#" class="btn btn-primary back-to-top" role="button" aria-label="Scroll to top">
                    <i class="fas fa-chevron-up"></i>
                </a>
            </div>
            <!-- /.content-wrapper -->

            <jsp:include flush="true" page="footer2.jsp"/>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- /.control-sidebar -->
        </div>
        <!-- ./wrapper -->

        <!-- jQuery -->
        <jsp:include flush="true" page="js2.jsp"/>
    </body>
</html>

