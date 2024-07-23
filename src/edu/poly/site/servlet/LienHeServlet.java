package edu.poly.site.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;

/**
 * Servlet implementation class VideoDetailServlet
 */
@WebServlet("/contactServlet")
public class LienHeServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_CONTACTS);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String name = request.getParameter("name");
//        String email = request.getParameter("email");
//        String message = request.getParameter("message");
//        
//        
//        // Gửi phản hồi về trình duyệt
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//        out.println("<html><body>");
//        out.println("<h1>Thông báo gửi thành công</h1>");
//        out.println("<p>Cảm ơn " + name + " đã liên hệ với chúng tôi!</p>");
//        out.println("</body></html>");
	}

}