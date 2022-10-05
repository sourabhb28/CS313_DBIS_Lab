import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

/**
 * Servlet implementation class IssueServlet
 */
@WebServlet("/IssueServlet")
public class IssueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// declaring variables for later use in making connection
	static final String DB_URL = "jdbc:mysql://localhost:3306/Library";
	static final String USER = "root";
	static final String PASS = "password";

	public IssueServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			// getting input values from jsp page
			String student_id = request.getParameter("student_id");
			String book_id = request.getParameter("book_id");
//			String issue_date = request.getParameter("issue_date");
//			Date issue_date = (Date) new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("issue_date"));
			java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("issue_date"));
			java.sql.Date issue_date = new java.sql.Date(date.getTime());
			java.util.Date date2 = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("return_date"));
			java.sql.Date return_date = new java.sql.Date(date2.getTime());

			Connection conn = null;
			Class.forName("com.mysql.jdbc.Driver"); // loading the driver
			conn = DriverManager.getConnection(DB_URL, USER, PASS); // attempting to connect to MySQL database
			System.out.println("Printing connection object " + conn);

			// Prepared Statement to check if the student exists in the database
			PreparedStatement checkStudent = conn.prepareStatement("SELECT count(*) AS count FROM student WHERE student_id = ?");
			checkStudent.setString(1, student_id);
			ResultSet resultSet = checkStudent.executeQuery();
			resultSet.next();

			boolean r2 = resultSet.getBoolean("count");
			System.out.println("resultSet is " + r2);

			if (r2) {
				// Prepared Statement to add issue details
				String IssueQuery = "INSERT INTO issue VALUES(?, ?, ?, ?);";
				PreparedStatement pStmt = conn.prepareStatement(IssueQuery);
				pStmt.setString(1, student_id);
				pStmt.setString(2, book_id);
				pStmt.setDate(3, issue_date);
				pStmt.setDate(4, return_date);
				int result = pStmt.executeUpdate();
				System.out.println("result is " + result);

				// Checks if insert is successful.If yes,then redirects to IssueResult.jsp page
				if (result > 0) {
					RequestDispatcher rd = request.getRequestDispatcher("IssueResult.jsp");
					rd.forward(request, response);
				}
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("IssueResultException.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
