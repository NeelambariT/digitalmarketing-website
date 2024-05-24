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

@WebServlet("/Career")
public class Career extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Career() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String fn=request.getParameter("Firstname");
		String ln=request.getParameter("Lastname");
		String mobile=request.getParameter("mobnum");
		String gender=request.getParameter("gen");
		String mail=request.getParameter("email");
		String gyear=request.getParameter("year");
		String loca=request.getParameter("location");
		String xp =request.getParameter("exp");
		String cjob=request.getParameter("job");
		String skill=request.getParameter("skills");
		Connection con;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/zazi","root","");
			String sql=("insert into career(firstname,lastname,Mobileno,gender,emailid,graduation,location,experiance,currentjob,skills) values"
					+ "('"+fn+"','"+ln+"',"+mobile+",'"+gender+"','"+mail+"','"+gyear+"','"+loca+"','"+xp+"','"+cjob+"','"+skill+"')");
						PreparedStatement st= con.prepareStatement(sql);
						st.executeUpdate(sql);
						out.println("Applied successfully");
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
