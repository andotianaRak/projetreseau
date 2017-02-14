package ando.mira.fevrandrana.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnect {

    public Connection getconn() {
        Connection con = null;
        String url = "jdbc:postgresql://ec2-54-235-204-221.compute-1.amazonaws.com/d5tghfv9r46igs";
        String user = "dqusxeupqproex";
        String password = "3ea0d0ca67fcbfa6ca26c2b51e3b9974dbaf761084f538331f4336deccf817cd";
// String url = "jdbc:postgresql://localhost/shareit";
//        String user = "postgres";
//        String password = "itu";
        try {
            con = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            Logger lgr = Logger.getLogger(DBConnect.class.getName());
            lgr.log(Level.SEVERE, ex.getMessage(), ex);
        }
        return con;
    }
}
