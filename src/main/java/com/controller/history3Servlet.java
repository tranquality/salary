package com.controller;

import com.dao.selectDao;
import com.model.staff;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/controller/history3Servlet.do")
public class history3Servlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
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
        String staffcode=request.getParameter("staffcode");
        if ("".equals(staffcode)){
            response.sendRedirect("../historyerror3.jsp");
        }
        else {
            selectDao dao=new selectDao();
            ArrayList<staff> historyList3 = dao.history3(staffcode);
            if(historyList3.isEmpty()){
                response.sendRedirect("../historyerror32.jsp");
            }
            else {
                request.getSession().setAttribute("historyList3", historyList3);
                response.sendRedirect("../show3.jsp");
            }
        }
        out.write("</body>");
        out.write("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
