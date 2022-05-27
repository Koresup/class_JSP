package board_p.service_p;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_p.BoardService;
import board_p.model_p.BoardDAO;
import board_p.model_p.BoardDTO;

public class BoardDeleteReg implements BoardService{
	
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		
			
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		BoardDTO dto = new BoardDTO();
		dto.setId(Integer.parseInt(request.getParameter("id")));
		dto.setPw(request.getParameter("pw"));
		
		
		int res = new BoardDAO().delete(dto);
		
		
		String msg = "삭제 실패 ! ", goUrl = "DeleteForm?id=" + dto.getId();
		
		if (res > 0) {
			msg = "수정 성공";
			goUrl = "List";
		}		
		
		request.setAttribute("msg", msg);
		request.setAttribute("goUrl", goUrl);
		request.setAttribute("mainUrl", "alert");
		System.out.println("BoardModifyReg execute() 실행");
	}
}
