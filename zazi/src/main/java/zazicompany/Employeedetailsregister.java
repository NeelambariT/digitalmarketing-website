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

/**
 * Servlet implementation class Employeedetailsregister
 */
@WebServlet("/Employeedetailsregister")
public class Employeedetailsregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employeedetailsregister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String em= request.getParameter("empi");
		String fn= request.getParameter("fname");
		String ln= request.getParameter("lname");
		String gender=request.getParameter("gen");
		String designa=request.getParameter("designa");
		String dob=request.getParameter("dob");
		String doj=request.getParameter("doj");
		String mobno=request.getParameter("mobile");
		int exp=Integer.parseInt(request.getParameter("experiance"));
		String add=request.getParameter("address");
		String email=request.getParameter("email");
		String education=request.getParameter("edu");
		Connection con;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/zazi","root","");
			String sql=("insert into empreg(empid,firstname,lastname,gender,dob,Designation,doj,mobileno,experiance,address,email,education) values"
					+ "('"+em+"','"+fn+"','"+ln+"','"+gender+"','"+dob+"','"+designa+"','"+doj+"','"+mobno+"',"+exp+",'"+add+"','"+email+"','"+education+"')");
			//st.executeUpdate("update login set firstname='"+fn+"',lastname='"+ln+"',age="+ag+",gender='"+gender+"',"
					//+ "Mobilenumber="+mobno+",mail='"+em+"',pass='"+password+"'");
			PreparedStatement st= con.prepareStatement(sql);
			//param values
			/** st.setString(1,fn);
			 st.setString(2,ln);
			 st.setInt(3,ag);
			 st.setString(4,gender);
			 st.setInt(5,mobno);
			 st.setString(6,em);
			 st.setString(7,password);*/
			
			
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
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
