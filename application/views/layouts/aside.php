        <!-- =============================================== -->

        <Body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Coop. Cuzca</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              
              
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                
                <ul class="nav side-menu" >
                  <li class=""><a><i class="fa fa-home"></i> Ingresos <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu" style="display: none;">
                      <li><a href="<?php echo base_url();?>mantenimiento/categorias">Cuentas Contables</a></li>
                      <li><a href="<?php echo base_url();?>mantenimiento/categorias/niveles">Generales de Cuentas</a></li>
                      <li><a href="<?php echo base_url();?>mantenimiento/categorias/periodo">Periodo Contable</a></li>
                    </ul>
                  </li>
                  
                </ul>
              </div>
             

            </div>
            <!-- /sidebar menu -->

          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
              <nav class="nav navbar-nav">
              <ul class=" navbar-right">
                <li class="nav-item dropdown open" style="padding-left: 15px;">
                  <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                  <i class="fa fa-sign-out pull-right"><?php echo $this->session->userdata("nombre")?> </i> 
                  </a>
                  <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                   
                    <a class="dropdown-item"  href="<?php echo base_url(); ?>auth/logout"> Cerrar Sesión </a>
                  </div>
                </li>

                
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

       
        <!-- =============================================== -->