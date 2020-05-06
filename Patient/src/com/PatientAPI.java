package com;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Patient;

/**
 * Servlet implementation class PatientAPI
 */
@WebServlet("/PatientAPI")
public class PatientAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Patient patientObj = new Patient();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		String output = patientObj.AddPatient(
				request.getParameter("P_fname"), 
				request.getParameter("P_lname"),
				request.getParameter("P_gender"), 
				request.getParameter("P_age"), 
				request.getParameter("P_patientNIC"),
				request.getParameter("P_address"), 
				request.getParameter("P_email"),
				request.getParameter("P_password"),
				request.getParameter("P_phoneNo"));

		response.getWriter().write(output);

	}

	// Convert request parameters to a Map
		private static Map getParasMap(HttpServletRequest request) {
			Map<String, String> map = new HashMap<String, String>();
			try {
				Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
				String queryString = scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
				scanner.close();
				String[] params = queryString.split("&");
				for (String param : params) {

					String[] p = param.split("=");
					map.put(p[0], p[1]);
				}
			} catch (Exception e) {
			}
			return map;
		}
	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);
		String patientEmail = URLDecoder.decode(paras.get("P_email").toString(), "UTF-8"); // Email decoder
		//System.out.println(paras);
				String output = patientObj.updatePatient(paras.get("hidPatientIDSave").toString(), 
						paras.get("P_fname").toString(),
						paras.get("P_lname").toString(), 
						paras.get("P_gender").toString(), 
						paras.get("P_age").toString(),
						paras.get("P_patientNIC").toString(), 
						paras.get("P_address").toString(),
						patientEmail,
						paras.get("P_password").toString(),
						paras.get("P_phoneNo").toString());

				response.getWriter().write(output);
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);
		String output = patientObj.deletePatient(paras.get("P_Id").toString());
		response.getWriter().write(output);
	}

}
