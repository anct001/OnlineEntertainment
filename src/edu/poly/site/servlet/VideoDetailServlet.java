package edu.poly.site.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.VideoDao;
import edu.poly.model.Video;

@WebServlet("/VideoDetailServlet")
public class VideoDetailServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy videoId từ request
            String videoId = request.getParameter("videoId");
            
            // Kiểm tra xem videoId có tồn tại không
            if (videoId != null && !videoId.isEmpty()) {
                // Tạo một đối tượng VideoDao để truy vấn cơ sở dữ liệu
                VideoDao videoDao = new VideoDao();
                
                // Sử dụng phương thức findById để lấy thông tin về video theo videoId
                Video video = videoDao.findById(videoId);
                
                System.out.println("Found video with title: "+video);
                // Kiểm tra xem video có tồn tại không
                if (video != null) {
                    // Đặt thông tin về video vào request để hiển thị trên trang chi tiết
                    request.setAttribute("video", video);
                    
                    // Chuyển hướng đến trang chi tiết của video
                    PageInfo.prepareAndForwardSite(request, response, PageType.SITE_VIDEO_DETAIL_PAGE);
                    
                    // Kết thúc phương thức để không thực hiện các dòng mã sau khi chuyển hướng
                    return;
                } else {
                    // Nếu video không tồn tại, chuyển hướng đến trang lỗi
                    //PageInfo.prepareAndForwardSite(request, response, PageType.SITE_ERROR_PAGE);
                    return;
                }
                      
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "An error occurred: " + e.getMessage());
        }
        
        // Nếu không có videoId hoặc xảy ra lỗi, chuyển hướng đến trang lỗi
        //PageInfo.prepareAndForwardSite(request, response, PageType.SITE_ERROR_PAGE);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Đối với phương thức POST, chúng ta có thể thực hiện các xử lý khác nếu cần
    }
}
