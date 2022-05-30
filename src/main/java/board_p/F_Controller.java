package board_p;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class F_Controller
 */
@WebServlet("/board/*")
public class F_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	ArrayList<String> nonClass;
	
    public F_Controller() {
        super(); // HttpServlet 상속 받았기 때문에 필요
        nonClass = new ArrayList<String>();
        nonClass.add("InsertForm");
        nonClass.add("DeleteForm");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath()); //화면 출력 : getWriter (out역할)
		
//		System.out.println(request.getRequestURI());
//		System.out.println(request.getContextPath());
		String serviceStr = request.getRequestURI().substring(
				(request.getContextPath() + "/board/").length()
				);
		
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		request.setAttribute("nowPage", page);

//		System.out.println(serviceStr);
		
		
		if (nonClass.contains(serviceStr)) {
			request.setAttribute("mainUrl", serviceStr);

		} else {
			// 외워라
			try {
				BoardService service = 
						(BoardService) Class.forName("board_p.service_p.Board" + serviceStr)
						.newInstance(); // 임포트가 아니니 패키지 이름부터 땡겨야함

				service.excute(request, response);
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
		
		if (!serviceStr.equals("FileDown")) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/bbb_view/template.jsp");
		
		dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
