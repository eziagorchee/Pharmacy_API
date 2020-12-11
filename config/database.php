<?php
class Database{
  
    private $cleardb_url;

    private $cleardb_server;
    private $cleardb_username;
    private $cleardb_password;
    private $cleardb_db;
    
    // specify your own database credentials
    private $host;
    private $db_name;
    private $username;
    private $password;
    public function __construct()
    {
        $this->cleardb_url=parse_url(getenv("CLEARDB_DATABASE_URL"));
        $this->cleardb_server = $this->cleardb_url['host'];
        $this->cleardb_db = substr($this->cleardb_url['path'], 1);
        $this->cleardb_username = $this->cleardb_url['user'];
        $this->cleardb_password = $this->cleardb_url['pass'];
        $this->host = $this->cleardb_server;
    $this->db_name = $this->cleardb_db;
    $this->username = $this->cleardb_username;
    $this->password = $this->cleardb_password;
    }
    public $conn;
  
    // get the database connection
    public function getConnection(){
  
        $this->conn = null;
  
        try{
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            $this->conn->exec("set names utf8");
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
  
        return $this->conn;
    }
}
