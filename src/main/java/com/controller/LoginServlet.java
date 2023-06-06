package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.*;

@WebServlet("/LoginServlet.do")
public class LoginServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        loginDao dao=new loginDao();
        PrintWriter out=response.getWriter();
        out.write("<!DOCTYPE html>\n" +
                "<html>");
        out.write("<head>");
        out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"https://www.huangwx.cn/css/sweetalert.css\">\n" +
                "<style type=\"text/css\">\n" +
                " .sweet-alert{\n" +
                "    width: 400px;\n" +
                "    margin-left: -220px;\n" +
                "}\n" +
                ".sweet-alert h2{\n" +
                "    font-size: 25px;\n" +
                "}       \n" +
                "</style>"+
                "<script type=\"text/javascript\" src=\"https://www.huangwx.cn/js/sweetalert-dev.js\"></script>"+
                "<script src=\"https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js\"></script>");
        out.write("</head>");
        out.write("<body>");
        String account=request.getParameter("account");
        String password=request.getParameter("password");
        System.out.println(account);
        System.out.println(password);
        String success = dao.login(account,password);
        if(success.equals("amdin")) {
        	ServletContext context=getServletContext();
            RequestDispatcher rd = context.getRequestDispatcher("/controller/dpinfo.do");
            rd.forward(request, response);
        }
        else {
        	response.sendRedirect("error.jsp");
         }
        
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
