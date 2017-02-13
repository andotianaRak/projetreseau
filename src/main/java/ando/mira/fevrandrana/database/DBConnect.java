package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnect {

    public Connection getconn() {
        Connection con = null;
        String url = "jdbc:postgresql://ec2-54-225-67-3.compute-1.amazonaws.com/dbqecfdetju6j7";
        String user = "rmahxdpzduhhbf";
        String password = "e1231355b240d62709de8966a27181e9a208e58d2927779ce18737168aa2f2d1";
        try {
            con = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            Logger lgr = Logger.getLogger(DBConnect.class.getName());
            lgr.log(Level.SEVERE, ex.getMessage(), ex);
        }
        return con;
    }
}
