package schoolproject;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author HP
 */
public class DbConnect {
     
        private static String URL = "jdbc:mysql://localhost:3306/school?";
        private static String USER = "root";
        private static String PASSWORD = "";
    public static Connection connect(){
        Connection con = null;
        try{
            System.out.println("in");
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Done");
            // zeroDateTimeBehavior=CONVERT_TO_NULL
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            //JOptionPane.showMessageDialog(null, "Connection Sucess");
        } catch(Exception e){
            System.out.println("inter.DbConnect.connect()");
        }
        return con;
    }
    public static void main (String args[])
    {
        Connection Db =new DbConnect().connect();
    }
}
