package zazicompany;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Forget
 */
@WebServlet("/Forget")
public class Forget extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forget() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		 
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		Statement st;
		ResultSet rs; 
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con;
			con=DriverManager.getConnection("jdbc:mysql://localhost/zazi","root","");
			String em=request.getParameter("email");
			st= con.createStatement();
			rs=st.executeQuery("select * from login where mail='"+em+"' ");
			if(rs.next())
			{
				
		    	response.sendRedirect("http://localhost:8080/zazi/forgotpassword.jsp");
			}
			
			else {
				
			out.println("('mailid is not registered or kindly check your mailid');");
				
			}
			st.close();
			con.close();
		}
			catch(Exception ex)
			{
				out.println(ex);
				out.close();
			}
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
