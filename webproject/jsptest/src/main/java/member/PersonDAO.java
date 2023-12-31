package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import jdbc.ConnectionPool;

public class PersonDAO {

	private final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
    private final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:xe";
    private final String USER = "hr";
    private final String PASS = "hr";
    public PersonDAO() {
    try{
        Class.forName(JDBC_DRIVER);
    }catch(Exception e){
          System.out.println("Error : JDBC 드라이버 로딩 실패");
    }
    }
    public Vector<PersonVO> getPersonList() {
    ConnectionPool pool = null;
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    Vector<PersonVO> PersonList = new Vector<PersonVO>();
    try {
    		pool = ConnectionPool.getInstance();
    		conn = pool.getConnection();
             String strQuery = "select * from Person";
             stmt = conn.createStatement();
             rs = stmt.executeQuery(strQuery);
        while (rs.next()) {
        	PersonVO person = new PersonVO();
         person.setId (rs.getString("id"));
         person.setName (rs.getString("name"));
         person.setEmail (rs.getString("email"));
         PersonList.add(person);
             }
         } catch (Exception ex) {
              System.out.println("Exception" + ex);
         } finally {
               if(rs!=null)   try{rs.close();}  catch(SQLException e){}
          if(stmt!=null) try{stmt.close();}catch(SQLException e){}
          if(conn!=null) try{conn.close();}catch(SQLException e){}
         }
         return PersonList;
    }
 

    public void insertPerson(PersonVO person) {
    	ConnectionPool pool = null;
        Connection conn = null;
        Statement stmt = null;
        try {
        		pool = ConnectionPool.getInstance();
        		conn = pool.getConnection();
                 String strQuery = "insert * from Person";
                 stmt = conn.createStatement();
                 rs = stmt.executeQuery(strQuery);
            while (rs.next()) {
            	PersonVO person = new PersonVO();
             person.setId (rs.getString("id"));
             person.setName (rs.getString("name"));
             person.setEmail (rs.getString("email"));
             PersonList.add(person);
                 }
             } catch (Exception ex) {
                  System.out.println("Exception" + ex);
             } finally {
                   if(rs!=null)   try{rs.close();}  catch(SQLException e){}
              if(stmt!=null) try{stmt.close();}catch(SQLException e){}
              if(conn!=null) try{conn.close();}catch(SQLException e){}
             }
             return PersonList;
    }
    
}

