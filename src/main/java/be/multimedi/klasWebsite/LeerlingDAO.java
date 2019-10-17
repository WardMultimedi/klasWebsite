package be.multimedi.klasWebsite;

import be.multimedi.klasWebsite.database.DriverManagerWrapper;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LeerlingDAO {
    public static List<Leerling> getAllLeerlingen(){
        List<Leerling> list = new ArrayList<>();
        try{
            Connection con = DriverManagerWrapper.getConnection();
            try {
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM Leerlingen");
                while(rs.next()){
                    var id = rs.getInt("id");
                    var voornaam = rs.getString("voornaam");
                    var achternaam = rs.getString("achternaam");
                    var description = rs.getString("description");
                    var homepage = rs.getString("homepage");
                    var linkedIn = rs.getString("linkedIn");
                    var image = rs.getString("image");
                    var email = rs.getString("email");

                    var leerling = new Leerling(id,voornaam, achternaam, description, homepage, linkedIn, image,email);
                    list.add(leerling);
                }
            }catch (SQLException se){
                System.out.println(se);
            }
        }catch (SQLException se){
            System.out.println(se);
        }
        return list;
    }
}
