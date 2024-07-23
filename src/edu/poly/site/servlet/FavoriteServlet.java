package edu.poly.site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtils;
import edu.poly.dao.FavoriteDao;
import edu.poly.dao.VideoDao;
import edu.poly.model.Favorite;
import edu.poly.model.Video;

/**
 * Servlet implementation class VideoDetailServlet
 */

@WebServlet("/FavoriteVideo")
public class FavoriteServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
	        FavoriteDao dao = new FavoriteDao();
	        // Gọi phương thức exportFavoriteVideos() để lấy danh sách video được yêu thích
	        List<Object[]> list = dao.exportFavoriteVideos();
	        request.setAttribute("videos", list);
	    } catch(Exception e) {
	        e.printStackTrace();
	        request.setAttribute("error", e.getMessage());
	    }
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_FAVORITE_PAGE);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if (action != null && action.equals("unlike")) {
            unlikeVideo(request, response);
        }
    }

    private void unlikeVideo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String favoriteIdStr = request.getParameter("FavoriteId");
        
        if (favoriteIdStr == null) {
            response.sendRedirect("/Homepage");
            return;
        }

        try {
            // Chuyển đổi favoriteId từ String sang Integer
            Integer favoriteId = Integer.valueOf(favoriteIdStr);
            
            FavoriteDao dao = new FavoriteDao();
            String username = SessionUtils.getLoginedUsername(request);
            dao.delete(favoriteId);
            request.setAttribute("message", "Video is removed from favorite");
        } catch(Exception e) {
            e.printStackTrace();
            request.setAttribute("error", e.getMessage());
        }

        // Chuyển hướng lại trang yêu thích
        response.sendRedirect("FavoriteVideo");
    }

}

