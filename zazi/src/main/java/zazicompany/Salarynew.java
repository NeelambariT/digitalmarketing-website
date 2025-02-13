package zazicompany;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Salary
 */
@WebServlet("/Salarynew")
public class Salarynew extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String page="empallsalarydetails.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Salarynew() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();
		Connection con;
		ResultSet rs;
		response.setContentType("text/html");
		List<String> dataList=new ArrayList<String>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/zazi","root","");
			String sql="select * from payroll";
			Statement s=con.createStatement();
			s.executeQuery(sql);
			rs=s.getResultSet();
			while(rs.next()) {
				dataList.add(rs.getString("empid"));
				dataList.add(rs.getString("fullname"));
				dataList.add(rs.getString("dept"));
				dataList.add(rs.getString("designation"));
				dataList.add(""+rs.getInt("basicpay"));
				dataList.add(""+rs.getInt("HRA"));
				dataList.add(""+rs.getInt("allowance"));
				dataList.add(""+rs.getFloat("bonus"));
				dataList.add(""+rs.getInt("pf"));
				dataList.add(""+rs.getFloat("tax"));
				dataList.add(""+rs.getFloat("netpay"));
			}
			
			rs.close();
			s.close();
			
		}
		catch(Exception e) {
			out.println("exception is;"+e);
		}
		request.setAttribute("data", dataList);
		RequestDispatcher dispatcher=request.getRequestDispatcher(page);
		if(dispatcher !=null) {
			dispatcher.forward(request, response);
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
