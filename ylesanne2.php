<?php 
include ("config.php"); 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ylesanne2</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

    <body>
        <div class="container">   
        <h1>.albumid. sisu ridade kaupa (10 rida)</h1>
        <?php
        $start = 0;
        while (true) {
            $sql = "SELECT * FROM albumid LIMIT $start, 10";
            $result = $yhendus->query($sql);

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "Artist: " . $row["artist"] . " - Album: " . $row["album"] . " - Aasta: " . $row["aasta"] . " - Hind: " . $row["hind"] . "<br>";
                }
                $start += 10; 
                echo "<br>";
            } else {
                break;
            }
        }
        
        ?>

        <hr>
        
        <h1>Artist ja album, kasvavalt artisti järgi (10 rida)</h1>
        <?php
        $sql = "SELECT artist, album FROM albumid ORDER BY artist ASC LIMIT 10";
        $result = $yhendus->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "Artist: " . $row["artist"] . " - Album: " . $row["album"] . "<br>";
            }
        }
        ?>

        <hr>

        <h1>Artist ja album, aasta 2010 ja uuemad</h1>
        <?php
        $sql = "SELECT artist, album FROM albumid WHERE aasta >= 2010";
        $result = $yhendus->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "Artist: " . $row["artist"] . " - Album: " . $row["album"] . "<br>";
            }
        }
        ?>

        <hr>

        <h1>Albumite arv, keskmine hind ja koguväärtus</h1>
        <?php
        $loe = "SELECT COUNT(DISTINCT album) AS albumeid FROM albumid";
        $keskmine = "SELECT AVG(hind) AS keskmine FROM albumid";
        $kokku = "SELECT SUM(hind) AS koguvaartus FROM albumid";

        $loe_t = $yhendus->query($loe);
        $keskmine_t = $yhendus->query($keskmine);
        $kokku_t = $yhendus->query($kokku);

        if ($loe_t && $keskmine_t && $kokku_t) {
            $album = $loe_t->fetch_assoc();
            $hind = $keskmine_t->fetch_assoc();
            $summa = $kokku_t->fetch_assoc();

            echo "Albumeid: " . $album["albumeid"] . "<br>";
            echo "Keskmine: " . round($hind["keskmine"]) . "€<br>";
            echo "Koguväärtus: " . round($summa["koguvaartus"]) . "€<br>";
        }
        ?>

        <hr>

        <h1>Vanim album</h1>
        <?php
        $sql = "SELECT album FROM albumid ORDER BY aasta ASC LIMIT 1";
        $result = $yhendus->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "Album: " . $row["album"] . "<br>";
            }
        }
        ?>

        <hr>

        <h1>Albumid keskmisest suuremad</h1>
        <?php
        $kesk = "SELECT AVG(hind) AS kesk FROM albumid";
        $sql = "SELECT artist, album FROM albumid WHERE hind > ($kesk)";

        $kesk_t = $yhendus->query($kesk);
        $sql_t = $yhendus->query($sql);


        if ($kesk_t && $sql_t) {
            // Töötle keskmise hinna päringu tulemust
            $row_kesk = $kesk_t->fetch_assoc();
            $keskmine_hind = $row_kesk["kesk"];
        
            echo "Keskmine hind: " . round($keskmine_hind) . "<br>";
        
            // Töötle albumite päringu tulemusi
            if ($sql_t->num_rows > 0) {
                echo "Keskmisest suuremad:<br>";
                while($row = $sql_t->fetch_assoc()) {
                    echo $row["album"] . "<br>";
                }
            }
        }
        ?>

        


    
        <hr>
        <h2>Otsingu kast</h2>
        <form action="#" method="get">
            <select name="search_type">
                <option value="artist">Artistid</option>
                <option value="album">Albumid</option>
            </select>
            <input type="text" name="s"><br>
            <input type="submit" value="Otsi">
        </form>
        <?php
        if(!empty($_GET['s'])) {
            $sisestus = $_GET['s'];

            $sql = "SELECT artist, album FROM albumid WHERE artist LIKE '%$sisestus%' OR album LIKE '%$sisestus%'";
            $result = $yhendus->query($sql);

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "Artist: " . $row["artist"] . " - Album: " . $row["album"] . "<br>";
                }
            } else {
                echo "Artisti/Albumit ei eksisteeri!";
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