<?php

class DB
{

    public $host = "localhost";
    public $user = "root";
    public $password = "";
    public $database = "db_test";

    public $connect;
    public $result;

    public function __construct()
    {
        try {
            return $this->connect = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->database, $this->user, $this->password);
            // echo "Database connection";
        } catch (PDOException $e) {
            echo "Database connecting Error: " . $e->getMessage();
        }
    }
}

