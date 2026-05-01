package conn;

import java.sql.*;

public class Conn {

    public static Connection getCon() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver"); // MySQL 5.5 driver
            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/demo", "root", "root"
            );
            System.out.println("Connection is created");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
