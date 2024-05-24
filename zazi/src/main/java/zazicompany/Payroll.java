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
@WebServlet("/Payroll")
public class Payroll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Payroll() {
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
		String empid= request.getParameter("empid");
		String fullname= request.getParameter("fname");
		String dept= request.getParameter("dept");
		String designation=request.getParameter("design");
		int basicpay=Integer.parseInt(request.getParameter("basicpay"));
		int HRA=Integer.parseInt(request.getParameter("hra"));
		float bonus=Float.parseFloat(request.getParameter("bonus"));
		int allowance=Integer.parseInt(request.getParameter("allow"));
		int pf=Integer.parseInt(request.getParameter("pf"));		
		float tax=Float.parseFloat(request.getParameter("tax"));
		Connection con;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/zazi","root","");
			String sql=("insert into payroll(empid,fullname,dept,designation,basicpay,HRA,allowance,bonus,pf,tax) values"
					+ "('"+empid+"','"+fullname+"','"+dept+"','"+designation+"',"+basicpay+","+HRA+","+allowance+","+bonus+","+pf+","+tax+")");
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
