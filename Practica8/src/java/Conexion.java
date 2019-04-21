import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Melina
 */
public class Conexion {
    Connection lel;
    
        public Connection getLel(){
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                    DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
            } catch (ClassNotFoundException ex){
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLExeption ex){
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
            return lel;
        }
}