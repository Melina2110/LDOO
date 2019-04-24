package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Melina
 */
public class Conexion {
    private String USERNAME = "root";
    private String PASSWORD = "12345";
    private String POST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "loginjsp";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
    private Connection con;
    
    public Conexion(){
        try{
            class.forName(CLASSNAME);
            con=DriverManager.getConnection(URL,USERNAME,PASSWORD);
        } catch (ClassNotFoundException e){
            System.err.println("ERROR"+e);
        } catch (SQLException e){
            System.err.println("ERROR"+e);
        }
    }
    public Connection getConexion(){
        return con;
    }
    public static void main(String[] args ){
        Conexion con = new Conexion();
    }
}
