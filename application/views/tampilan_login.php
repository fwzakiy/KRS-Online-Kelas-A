<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
       
    <link rel="stylesheet" href="<?php echo base_url();?>asset/css/login.css">

    <script type="text/javascript">
      function checkform()
      {
        if($("#noink").val()=='')
        {
          alert('isi nomor induk nya, jangan kosong'); 
          $("#noink").focus();
          return false;
        }

        if($("#password").val()=='')
        {
          alert('isi passwordnya ya, jangan kosong'); 
          $("#password").focus();
          return false;
        }
      }
    </script>
    
</head>

<body>

<form method="POST" action="<?php echo base_url();?>index.php/login/getlogin" onsubmit="return checkform();">
  <h4> KRS online</h4>
  <h5> Sistem Informasi UNAND </h5>
  <input class="name" id="noink" name="noink" type="text" placeholder="NOMOR INDUK"/>
  <input class="pw" id="password" name="password" type="password" placeholder="Password"/>
  <?php
    $info = $this->session->flashdata('info');
    if(!empty($info))
    {
      echo $info;
    }
  ?>
  <!--<li><a href="#">Forgot your password?</a></li>-->
  <input class="button" type="submit" value="Log in"/>
</form>
     <script src="<?php echo base_url();?>asset/js/jquery.js"></script>
</body>
</html>
