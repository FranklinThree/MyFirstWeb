package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCtest01 {
    public static final String URL = "jdbc:mysql://localhost:3306/QuestionnaireDatabase";
    public static final String USER = "root";
    public static final String PASSWORD = "333333";

    public static void main(String[] args) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(URL,USER,PASSWORD);
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT QuestionnaireName,QuestionnaireDescription FROM QuestionnaireLists");
        while(rs.next()){
            System.out.println("卷名："+rs.getString("QuestionnaireName")+",备注："+rs.getString("QuestionnaireDescription"));
        }
    }
}