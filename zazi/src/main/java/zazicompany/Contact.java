package zazicompany;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Contact() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String nam=request.getParameter("name");
		String comname=request.getParameter("cname");
		String mobile=request.getParameter("mobnum");
		String email=request.getParameter("email");
		String descrip=request.getParameter("description");
		Connection con;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/zazi","root","");
			String sql=("insert into contact(name,company,Mobileno,emailid,description) values"
					+ "('"+nam+"','"+comname+"',"+mobile+",'"+email+"','"+descrip+"')");
						PreparedStatement st= con.prepareStatement(sql);
						st.executeUpdate(sql);
						out.println("registered successfully");
						st.close();
						con.close();
					}
					catch(Exception ex)
					{
						out.println(ex);
						out.close();
					}
				}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
