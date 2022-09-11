<?php
    session_start();
    $lang = 'rus';
    if (isset($_GET['lang'])) {
        $lang = $_GET['lang'];
        $_SESSION['lang'] = $lang;
    }   

?>