package companionBoard;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;


@WebServlet("/replyview")
public class ReplyViewSevlet extends HttpServlet{
	final static ReplyDAO dao = new ReplyDAO();
	private final static Jackson jackson = new Jackson();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
	    JsonNode jsonNode = objectMapper.readTree(req.getReader());

	    int no = Integer.valueOf(jsonNode.get("boardNo").asText());

	    System.out.println("boardNo: " + no);
	    
	    List<BoardReply> list = null;
		try {
			list = dao.getList(no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	    String json = jackson.convertReplyListToJson(list);	

	    resp.setContentType("application/json");
	    resp.getWriter().print(json); 
	}
}
