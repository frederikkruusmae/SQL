<?php
include ("config.php");
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INDEX</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

    <body>
        <div class="container">
            <a href="ylesanne6,7,8_LOGIN.php">LOGI SISSE</a><br>
            <a href="ylesanne6,7,8_UUDISED.php">UUDISED</a>
            <h1>-INDEX-</h1>
            <hr>
        
        <h2>Tagasiside</h2>
        <form action="#" method="get">
            <label for="nimi">Teie nimi:</label><br>
            <input type="text" name="nimi" id="nimi"><br>
            <label for="email">Teie email:</label><br>
            <input type="text" name="email" id="email"><br>
            <label for="sonum">Sõnum:</label><br>
            <textarea cols="30" rows="10" name="sonum" id="sonum"></textarea><br>
            <img src="kypsised.php"><br>
            <label for="kood">Sisesta kood pildilt:</label><br>
            <input type="text" name="kood" id="kood"><br>
            <input type="submit" class="btn btn-success my-2" value="Saada">
        </form>
        <?php
        if(!empty($_GET['nimi']) && !empty($_GET['email']) && !empty($_GET['sonum'])){
            $nimi = $_GET['nimi']; 
            $email = $_GET['email'];
            $sonum = $_GET['sonum'];

            $to = 'frederikkru@gmail.com'; 
            $subject = 'Tagasiside ylesanne7'; 
            $message = $sonum; 
            $from = 'From: '.$nimi.'<'.$email.'>'; 

            if ($_GET['kood']==$_SESSION['captchatext']){
                if(mail($to, $subject, $message, $from)){ 
                    echo "Email saadetud!<br>Täname tagasiside eest!"; 
                    echo "<meta http-equiv=\"refresh\" content=\"2;URL='ylesanne6,7,8_INDEX.php'\">"; 
                    exit(); 
                } else { 
                    echo "Teie emaili ei saadetud ära!"; 
                }
            }
        }
        ?>

            



        <?php
        $yhendus->close();
        ?>   
        </div>

        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>