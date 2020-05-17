package net.codejava;
import java.sql.*;

public class JavaMySTest {

	
    public static void main(String[] args) throws 
        ClassNotFoundException {
    	String url ="jdbc:mysql://localhost:3306/namdb";
    	String username ="root";
    	String password ="123456";

        try {
        	   Connection conn =DriverManager.getConnection(url, username, password);
    			String sql = "SELECT * FROM author, paper1,review1";
    			java.sql.Statement statement = conn.createStatement();
    			
           
//              Retrieve a submitted paper’s details by the author’s Primary Key.
              lineSpacing("One");
              getPaperAuthorDetailsByAuthorId(conn);

//              Retrieve all reviews for a paper by the paper’s Id, where the paper was recommended to be
//              published.
              lineSpacing("Two");
              getReviewDetailsForRecommendedToPublished(conn);

//              Get a count of all papers submitted.
              lineSpacing("Three");
              getCountOfSubmittedPaper(conn);

//              Create a new paper submission.It includes paper and author table
              lineSpacing("Four");
              createNewPaperAndAuthorSubmission(conn);

//              Try and Delete the first “Author” row in your Author table by the author’s id. 
              //If there is a error, it will print why error occurred.
              //If it fails it prints the row of an author table has be deleted
             lineSpacing("Five");
              deleteFirstAuthor(conn);

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    private static void lineSpacing(String problemNumber) {
        System.out.println();
        System.out.println();
        System.out.println("-------------------Problem Number "+problemNumber+"---------------------------");
        System.out.println();
        System.out.println();
    }
    private static void getPaperAuthorDetailsByAuthorId(Connection conn) {

        try {
            Statement stmt = conn.createStatement();
            String sqlStr = "SELECT * FROM author, paper1  WHERE author.id1= paper1.id1 and author.id1= '1'  ";
			java.sql.Statement statement = conn.createStatement();
            ResultSet rset = stmt.executeQuery(sqlStr);

            while (rset.next()) {
                System.out.println("Paper Id is " + rset.getInt("id1"));
                System.out.println("Paper Title is " + rset.getString("title"));
                System.out.println("Paper Abstract is " + rset.getString("abstract"));
                System.out.println("Author Email Address is " + rset.getString("emailaddress"));
                System.out.println("Author First Name is " + rset.getString("firstname"));
                System.out.println("Author Last Name is " + rset.getString("lastname"));
            }
    

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
    
private static void getReviewDetailsForRecommendedToPublished(Connection conn) {

    try {
        Statement stmt = conn.createStatement();

        
        String sqlStr = "SELECT * FROM  paper1,review1  WHERE paper1.id1= review1.paper_id and review1.recommendation= 'The paper should be read'  ";

        ResultSet rset = stmt.executeQuery(sqlStr);

        while (rset.next()) {
            System.out.println("Id is " + rset.getInt("id1"));
            System.out.println("Paper Id is " + rset.getString("paper_id"));
            System.out.println("revierId is " + rset.getString("review_id"));
            System.out.println("Recommendation is " + rset.getString("recommendation"));
            System.out.println("Merit Score is " + rset.getInt("merit_score"));
            System.out.println("Readability score is " + rset.getInt("readability_score"));
            System.out.println("Originality score is " + rset.getInt("originality_score"));
            System.out.println("Relevance score is " + rset.getInt("relevance_score"));
            System.out.println();
            System.out.println();
        }

    } catch (SQLException e) {
        e.printStackTrace();
    }

}
//Get a count of all papers submitted.


private static void getCountOfSubmittedPaper(Connection conn) {

try {
Statement stmt = conn.createStatement();

String sqlStr = "SELECT" +
      " COUNT(*) as count" +
      " FROM " +
      " namdb.review1";
ResultSet rset = stmt.executeQuery(sqlStr);
while (rset.next()) {
  System.out.println("Count is " + rset.getInt("count"));
}

} catch (SQLException e) {
e.printStackTrace();
}
}

private static void createNewPaperAndAuthorSubmission(Connection conn) {

    try {
        Statement ps = conn
                .createStatement();
       String sqlStr = "INSERT into author (firsname, lastname, emaileaddress) VALUES (palden, gurung, palden@hotmail.com)";
       System.out.print("Thank you! You have successfully registered an author...");
       String sqlStrr = "INSERT into paper1 (id1, title,abstract,filename ) VALUES (4, Physics, It is a good book, physics.pdf )";
       System.out.print("Thank you! You have successfully registered an author...");
      

    } catch (SQLException e) {
        e.printStackTrace();
    }



}

private static void deleteFirstAuthor(Connection conn) {

    try {
    	
    	Statement ps = conn
                .createStatement();
       
        String firstAuthorDeleteSql = "DELETE from author WHERE emailaddress='reshu@hotmail.com'";

        System.out.println();
        int j = ps.executeUpdate(firstAuthorDeleteSql);
        if (j > 0)
            System.out.print("first author successfully deleted...");
    } catch (SQLIntegrityConstraintViolationException e) {
        System.out.print("First author cannot be deleted since there is already a paper assigned to this author");
    } catch (SQLException e) {
        e.printStackTrace();
    }
}

}






    

   


    



