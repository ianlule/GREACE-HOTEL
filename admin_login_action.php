
            <?php
            if (isset($_GET['error'])) {
                echo "<p class='error'>Invalid username or password</p>";
            }
          
session_start();
include 'connection.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM admins WHERE username='$username' AND password='$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $_SESSION['admin'] = $username;
        header("Location: admin_dashboard.php");
    } else {
        header("Location: admin_login.php?error=1");
    }
    $conn->close();
}
?>

