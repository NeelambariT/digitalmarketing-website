package zazicompany;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@SuppressWarnings("serial")
public class Forgotpassword extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String password = request.getParameter("cpass");
        String email = request.getParameter("email");

        if (email == null || email.isEmpty()) {
            out.println("Email is missing. Please submit the form again.");
            return;
        }

        Connection con = null;
        PreparedStatement pst = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/zazi", "root", "");
            String query = "UPDATE login SET pass = ? WHERE mail = ?";
            pst = con.prepareStatement(query);
            pst.setString(1, password);
            pst.setString(2, email);

            int updated = pst.executeUpdate();
            if (updated > 0) {
                response.sendRedirect("http://localhost:8080/zazi/index.jsp");
            } else {
                out.println("Failed to update password.");
            }

        } catch (Exception ex) {
            out.println("An error occurred: " + ex.getMessage());
        } finally {
            try {
                if (pst != null) pst.close();
                if (con != null) con.close();
            } catch (SQLException ex) {
                out.println("An error occurred while closing resources: " + ex.getMessage());
            }
        }
        out.close();
    }
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
