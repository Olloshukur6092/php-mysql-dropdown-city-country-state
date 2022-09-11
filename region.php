<?php
    require "db.php";
    $app = new DB;
        $countryId = $_POST['countryId'];
        $query = "SELECT * FROM region where r_country_id = ?";
        $smtp = $app->connect->prepare($query);
        $smtp->execute([$countryId]);
        $countryData = $smtp->fetchAll(PDO::FETCH_OBJ);
        echo json_encode([
            'data' => $countryData
        ]);
