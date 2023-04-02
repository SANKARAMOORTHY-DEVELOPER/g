<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<section class="about">

   <div class="row">

      <div class="box">
         <img src="images/about-img-1.png" alt="">
         <h3>why choose us?</h3>
         <p>At Gratis, we strive to provide the best possible learning experience for our users. Our website offers a wide range of free courses and internships from various domains to help students enhance their skills and improve their employability. </p>
         <a href="contact.php" class="btn">contact us <i class="fas fa-external-link"></i></a>
      </div>

      <div class="box">
         <img src="images/about-img-2.png" alt="">
         <h3>what we provide?</h3>
         <p>We provide a user-friendly website that offers a comprehensive list of free online courses and internships for students. Our platform helps students explore different opportunities that they may not have otherwise known about, ultimately helping them gain valuable skills and experience.</p>
         <a href="shop.php" class="btn">our categories <i class="fas fa-external-link"></i></a>
      </div>

   </div>

</section>

<?php include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>