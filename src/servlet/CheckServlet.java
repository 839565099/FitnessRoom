package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Check;

/**
 * 检查用户名密码是否存在
 * @author 张翼麒~~~
 *2019年4月9日
 */
@WebServlet(urlPatterns="/CheckServlet")
public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @throws IOException 
	 * @throws ServletException 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		response.setContentType("text/html;charset=GB18030");
		Check check=new Check();
		String user_id=request.getParameter("user_id");
		String user_pwd=request.getParameter("user_pwd");
		boolean result = false;
		result = check.checkLogin(user_id, user_pwd);
		if(result){
			HttpSession session = request.getSession();
			session.setAttribute("user_id",user_id);
		request.getRequestDispatcher("/HomePage.jsp").forward(request, response);		
		}
		else {//登陆错误
			PrintWriter out=response.getWriter();
			out.write("<script>alert('用户名或密码错误！');location.href='Login.jsp';</script>");
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
