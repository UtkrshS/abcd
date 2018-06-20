

import java.io.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Prop
 */
@WebServlet("/RegProp")
public class Prop extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String BuilderName = request.getParameter("cboBuilder");
		String[] Amities = request.getParameterValues("chkAmities");
		String PropType = request.getParameter("cboPropType");
		String ProjName = request.getParameter("txtProjName");
		String ProjAddress = request.getParameter("txtProjAddress");
		String ProjCity = request.getParameter("txtCity");
		String Contact = request.getParameter("txtContact");
		String Locality = request.getParameter("txtLocality");
		String Status = request.getParameter("cboStatus");
		String Description = request.getParameter("txtDescription");
		String ProjTerms = request.getParameter("chkTerms");
		Integer Bedroom = Integer.parseInt(request.getParameter("cboBedroom"));

		
	
		Integer Balcony =Integer.parseInt(request.getParameter("txtBalcony"));
		Integer ProjAge =Integer.parseInt( request.getParameter("txtAge"));		
		Integer ProjCarpet =Integer.parseInt( request.getParameter("txtCarpet"));
		Integer BuildArea = Integer.parseInt(request.getParameter("txtBuildArea"));
	    Integer FlatCost = Integer.parseInt(request.getParameter("txtCost"));
	
		String Ami ="";
		int i=0 ;
		 
		for (i=0 ; i<Amities.length; i++)
		{
			
			Ami = Ami + ","+ Amities[i];
		}
		

		
		try
		{
			
//			if (BuilderName!= null && BuilderName !="" &&  PropType !="" && PropType!= null && ProjName !="" &&  ProjName!= null && ProjAddress !="" && ProjAddress!=null && ProjCity!= null && ProjCity !="" && Contact!= null && Contact !="" &&  Locality!="0" && Locality!= null && Bedroom !="" && Bedroom!= null && Status !="" && Status!= null && Balcony !="" && Balcony!= null && ProjAge !="" && ProjAge!= null && ProjCarpet !="" && ProjCarpet!= null && BuildArea!="" && BuildArea!= null && Description !=""&& Description!= null && ProjTerms !="" &&  !="" &&  FlatCost!= null ProjTerms!= null);
			if (BuilderName !="0" &&  PropType !="0" && ProjName !="" &&  ProjName!= null && ProjAddress !="" && ProjAddress!=null && ProjCity!= null && ProjCity !="" && Contact!= null && Contact !="" &&  Locality!="0" && Locality!= null && Status !="0")//  && ProjAge!= null && ProjCarpet !=0 && ProjCarpet!= null && BuildArea!=0 && BuildArea!= null && Description !=""&& Description!= null && FlatCost !=0 &&  FlatCost!= null &&ProjTerms !="off" )
			{			
				
						Class.forName("com.mysql.jdbc.Driver");
						Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/propsell","root","");
					//Statement state = con.createStatement();
					//ResultSet  Result = state.executeQuery(arg0); 
						String InsertData = "Insert INTO prop_reg(Builder_Name ,Property_Type,Project_Name, Address, City,Contact, Locality, Bedroom,Status,Balcony,Age,Carpet_area,Build_area,Sale,Description,Ameties,Agreed) Values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
						
						PreparedStatement pState = con.prepareStatement(InsertData);
							
				        pState.setString(1, BuilderName);
						pState.setString(2, PropType);
						pState.setString(3, ProjName);
						pState.setString(4, ProjAddress);
						pState.setString(5, ProjCity);
						pState.setString(6, Contact);
						pState.setString(7, Locality);
						pState.setInt(8, Bedroom);
						pState.setString(9, Status);
						pState.setInt(10, Balcony);
						pState.setInt(11,ProjAge);
						pState.setInt(12, ProjCarpet);
						pState.setInt(13, BuildArea);
						pState.setInt(14, FlatCost);    
						pState.setString(15, Description);
						pState.setString(16, Ami);
						pState.setString(17, ProjTerms);
						
					
						int Rows = pState.executeUpdate();
						if (Rows > 0)
						{
							System.out.println("Number of Rows " + Rows + " Inserted");
						} 

			}


		}	

		catch(Exception e)
		{
			System.out.println("ERROR  : "+ e );
		}
	
	}

}
