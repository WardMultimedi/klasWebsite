package be.multimedi.klasWebsite.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class DriverManagerWrapper {
    private static Connection con;

    public static Connection getConnection() throws SQLException {
        if( con == null ){
            try {
                Class.forName("org.mariadb.jdbc.Driver");
            }catch (ClassNotFoundException cnfe){
                System.out.println("Could not find mariadb Driver");
            }
            con = DriverManager.getConnection(DB.url, DB.login, DB.pwd);
        }
        return con;
    }

    public static void closeConnection() throws SQLException {
        if( con != null ) {
            try {
                con.close();
            } catch (SQLException se) {
                throw se;
            } finally {
                con = null;
            }
        }
    }

    public static void safeCloseConnection(){
        try {
            closeConnection();
        }catch (SQLException se){
            System.out.println("Error while closing DB: " + se.getMessage() );
        }
    }
}
