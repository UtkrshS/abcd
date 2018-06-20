

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
//import java.io.IOException;
import java.sql.*;
import javax.servlet.http.Part;
/**
 * Servlet implementation class UploadImages
 */
@WebServlet("/UploadImages")

@MultipartConfig(fileSizeThreshold=1024*1024*2, 
maxFileSize=1024*1024*5, 
maxRequestSize=1024*1024*8)

public class UploadImages extends HttpServlet {
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
		String UserID = "2501";
		Integer PropID =	9870;
		String appPath = request.getServletContext().getRealPath("");
		String  BuildPath = UserID.toString() +File.separator+PropID.toString() ;
		String savePath = appPath + File.separator + BuildPath;
		String fileName;
		String[] fileP = new String[7];
		int i=0 , y=0;
		try{
		File fileSaveDir = new File(savePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdirs();
		}

		for (Part part : request.getParts()) {
			fileName = extractFileName(part);
			System.out.println("Status of I " + i);
				if (part.getSize()>0)
				{
				fileName = new File(fileName).getName();
					part.write(savePath + File.separator + fileName);
					fileP[i] = savePath + File.separator + fileName;
				}
				i++;
		}
		
		String InsertData="Insert INTO prop_img(Property_id,Img_Front,Img_Hall ,Img_Bedroom ,Img_Kitchen ,Img_Washroom ,Img_Other1,Img_Other2)"+"Values(?,?,?,?,?,?,?,?)";
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection myCon=DriverManager.getConnection("jdbc:mysql://localhost:3306/propsell","root","");
		PreparedStatement PepState = myCon.prepareStatement(InsertData);
		PepState.setInt(1, PropID);
		
		for (i=0 , y= 2; i<=6 ; i++ ,y++)
		{
		PepState.setString(y, fileP[i]);
		System.out.println("I =  "+ i + "  Y = "+y+" Location "+fileP[i]);
		}
		
		int rows = PepState.executeUpdate(); 
		if (rows > 0)
		{
		System.out.println("Rows  "+rows+ " Inserted");
		}
		
	
	System.out.println("Path is "+savePath);
	}catch(Exception  e)
		{
		System.out.println(" ERROR  :  " +e);
		}
	}

	private String extractFileName(Part part) {
			String contentDisp = part.getHeader("content-disposition");
			String[] items = contentDisp.split(";");
			for (String s : items) {
			if (s.trim().startsWith("filename")) {
			return s.substring(s.indexOf("=") + 2, s.length()-1);
			}
			}
			return "";
		}
	}

