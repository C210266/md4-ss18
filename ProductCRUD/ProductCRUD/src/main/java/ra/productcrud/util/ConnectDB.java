package ra.productcrud.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
    private static final String JDBCDRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/product_manager";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "dk0913390151";

    public  static Connection getConnection()  {
        Connection conn = null;
        try {
            // khai báo class cho driver
            Class.forName(JDBCDRIVER);
            // thực hiện mở kết nối
            conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return  conn;
    }

    public  static void closeConnection(Connection connect){
       if(connect!=null){
           try {
               connect.close();
           } catch (SQLException e) {
               throw new RuntimeException(e);
           }
       }
    }

}
