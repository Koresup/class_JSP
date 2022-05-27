package board_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BoardService {
	
	void excute(HttpServletRequest request, HttpServletResponse response);
}
