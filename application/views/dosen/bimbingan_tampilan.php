<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<!-- HEAD SECTION -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>KRS online</title>
    <!--GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!--BOOTSTRAP MAIN STYLES -->
    <link href="<?php echo base_url();?>asset/css/bootstrap.css" rel="stylesheet" />
    <!--FONTAWESOME MAIN STYLE -->
    <link href="<?php echo base_url();?>asset/css/font-awesome.min.css" rel="stylesheet" />
    <!--CUSTOM STYLE -->
    <link href="<?php echo base_url();?>asset/css/style.css" rel="stylesheet" />

    <link href="<?php echo base_url();?>asset/css/table.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
    <!--END HEAD SECTION -->
<body>   
     <!-- NAV SECTION -->
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <image src="<?php echo base_url();?>asset/img/logo.png" width="70px" height="50px" alt=''>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<?php echo base_url(); ?>index.php/dosen/home">HOME</a></li>
                    <li><a href="<?php echo base_url(); ?>index.php/dosen/krs">KRS</a></li>
                    <li><a href="<?php echo base_url(); ?>index.php/dosen/bimbingan">BIMBINGAN</a></li>
                    <li><a href="<?php echo base_url(); ?>index.php/dosen/home/logout">LOG OUT</a></li>
            </div>
           
        </div>
    </div>
     <!--END NAV SECTION -->
    <!-- BIMBINGAN SECTION -->
    <div id="bimbingan-section" >
        <div class="container" >
            <div class="row main-top-margin text-center">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1" data-scrollreveal="enter top and move 100px, wait 0.5s">
                    <h1>Bimbingan</h1>
                   
                </div>
            </div>
            <div data-scrollreveal="enter top and move 100px, wait 0.5s">
                <form action="<?php echo base_url().'index.php/dosen/bimbingan/kirimpesan'?>" method="POST" accept-charset="utf-8">
                    <h3>Mahasiswa</h3>
                    <select name="nim">
                    <?php foreach($mahasiswa->result() as $key): ?>
                        <option value="<?php echo $key->id_user?>"><?php echo $key->nama?></option>
                    <?php endforeach; ?>
                    </select>
                    <h3>Pesan</h3>
                    <textarea rows=10 name="pesan"></textarea><br>
                    <button type="submit" class="btn btn-success">Kirim Pesan</button>
                </form>
            </div>
            <div align ="center" data-scrollreveal="enter top and move 100px, wait 0.5s" >
                <div style="overflow-y:scroll; height:500px; width:400px">
                   <table >
                    <caption>Riwayat Percakapan</caption>
                    <thead>
                        <tr>
                            <th>Pesan dikirim</th>
                            <th>Pesan diterima</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($list as $key): ?>
                        <?php if($key->id_pengirim==$this->session->userdata('id_user')): ?>
                        <tr>
                            <td><h3><?php echo $key->nama ?></h3><textarea name="pesan"><?php echo $key->pesan ?></textarea><br></td>
                            <td></td>
                        </tr>
                        <?php else: ?>
                        <tr>
                            <td></td>
                            <td><h3><?php echo $key->nama ?></h3><textarea name="pesan"><?php echo $key->pesan ?></textarea><br></td>
                        </tr>
                        <?php endif; ?>
                    <?php endforeach; ?>
                    </tbody>
                </table> 
                </div>
                
            </div>
        </div>
    </div>
    <!--END BIMBINGAN SECTION -->
    <!--FOOTER SECTION -->
    <div id="footer">
        <div class="container">
            <div class="row ">
                &copy; 2016 KRS online | RPL Ganjil 				
		
            </div>
            
        </div>
       
    </div>  
    <!--END FOOTER SECTION --> 
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY LIBRARY -->
    <script src="<?php echo base_url();?>asset/js/jquery.js"></script>
    <!-- CORE BOOTSTRAP LIBRARY -->
    <script src="<?php echo base_url();?>asset/js/bootstrap.min.js"></script>
     <!-- SCROLL REVEL LIBRARY FOR SCROLLING ANIMATIONS-->
    <script src="<?php echo base_url();?>asset/js/scrollReveal.js"></script>
       <!-- CUSTOM SCRIPT-->
    <script src="<?php echo base_url();?>asset/js/custom.js"></script>
</body>
</html>
