package com.controller;

import com.dao.att2Dao;
import com.dao.selectDao;
import com.model.staff;
import com.model.staff3;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
@WebServlet("/controller/attendServlet1.do")
public class attendenceServlet extends HttpServlet {
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
        String year=request.getParameter("year");
        String month=request.getParameter("month");
        if("".equals(year)||"".equals(month)){
            response.sendRedirect("../attendenceerror1.jsp");
        }
        else {
            String date=year+"."+month;
            System.out.println("date"+date);
            selectDao dao=new selectDao();
            ArrayList<staff3> historyattend = dao.historyattend(date);
            System.out.println("get historyattend~");
            if(historyattend.isEmpty()){
                response.sendRedirect("../attendenceerror12.jsp");
            }
            else {
                request.getSession().setAttribute("historyattend", historyattend);
//        参照history进行修改

                response.sendRedirect("../showattendence1.jsp");
            }
        }
        out.write("</body>");
        out.write("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
