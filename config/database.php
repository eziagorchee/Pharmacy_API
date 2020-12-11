<?php
class Database{
  
    private $cleardb_url = parse_url(getenv('CLEARDB_DATABASE_URL'));
    private $cleardb_server = $this->cleardb_url['host'];
    private $cleardb_username = $this->cleardb_url['user'];
    private $cleardb_password = $this->cleardb_url['pass'];
    private $cleardb_db = substr($this->cleardb_url['path'], 1);
    // specify your own database credentials
    private $host = $this->cleardb_server;
    private $db_name = $this->cleardb_db;
    private $username = $this->cleardb_username;
    private $password = $this->cleardb_password;
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
?>