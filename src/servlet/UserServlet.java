package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.User;

/**
 * 用户Servlet
 * @author 张翼麒~~~
 *2019年4月10日
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	User user=new User();
	HttpServletRequest request;
	HttpServletResponse response;
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.request = request;
		this.response = response;
		int handleType = Integer.parseInt(request.getParameter("type"));
		switch (handleType) {
		case 1:// 类型1代表删除表中的数据
			try {
				delete();
			} catch (SQLException e2) {
				// TODO 自动生成的 catch 块
				e2.printStackTrace();
			}
			break;
		case 2:// 类型2代表更新表中的数据
			try {
				update();
			} catch (SQLException e1) {
				// TODO 自动生成的 catch 块
				e1.printStackTrace();
			}
			break;
		case 3:// 类型3代表向表中添加数据
			try {
				insert();
			} catch (NumberFormatException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			break;
		case 4:// 类型4代表获取表中信息
			try {
				getData();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			break;
		case 5:// 类型5代表根据查询条件获取表中信息
			try {
				getSearch();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			break;
		case 6:// 类型6代表向更改密码
			try {
				chagePassword();
			} catch (NumberFormatException | SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			break;
		default:
			break;
		}
	}
//	
	private void delete() throws IOException, SQLException {
		String user_id = request.getParameter("user_id");// 获取前台通过get方式传过来的Id
		user.delete(user_id);// 执行删除操作
		response.sendRedirect("UserServlet?type=4");
	}
	
	private void update() throws IOException, SQLException {
		
		response.setContentType("text/html;charset=GB18030");
		PrintWriter out = response.getWriter();
		String user_id = new String(request.getParameter("user_id").getBytes("ISO8859_1"), "GB18030");
		String user_name = new String(request.getParameter("user_name").getBytes("ISO8859_1"), "GB18030");
		String real_name = new String(request.getParameter("real_name").getBytes("ISO8859_1"), "GB18030");
		String user_pwd = new String(request.getParameter("user_pwd").getBytes("ISO8859_1"), "GB18030");
		String user_phone = new String(request.getParameter("user_phone").getBytes("ISO8859_1"), "GB18030");

		if (user.update(user_id,  user_name, real_name, user_pwd, user_phone) == 1) {
			out.write("<script>alert('数据修改成功！'); location.href = '/FitnessRoom/UserServlet?type=4';</script>");
		}
	}
	
	private void insert() throws UnsupportedEncodingException, IOException, NumberFormatException, SQLException {
		response.setContentType("text/html;charset=GB18030");
		PrintWriter out = response.getWriter();

		String user_id = new String(request.getParameter("user_id").getBytes("ISO8859_1"), "GB18030");
		String user_name = new String(request.getParameter("user_name").getBytes("ISO8859_1"), "GB18030");
		String real_name = new String(request.getParameter("real_name").getBytes("ISO8859_1"), "GB18030");
		String user_pwd = new String(request.getParameter("user_pwd").getBytes("ISO8859_1"), "GB18030");
		String user_phone = new String(request.getParameter("user_phone").getBytes("ISO8859_1"), "GB18030");

		if (!user.check(user_id)) {
			if (user.insert(user_id, user_name, real_name, user_pwd, user_phone) == 1) {
				out.write("<script>alert('数据添加成功~~~~'); location.href = '/FitnessRoom/UserServlet?type=4';</script>");
			} else {
				out.write("<script>alert('数据添失败！!!!'); location.href = '/FitnessRoom/UserServlet?type=4';</script>");
			}
		} else {
			out.write("<script>alert('账号已存在'); location.href = '/FitnessRoom/UserServlet?type=4';</script>");
		}
	}
	
	private void getData() throws ServletException, IOException, SQLException {
		List<Object> list = user.getData();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/ShowAdministrator.jsp").forward(request, response);// 请求转发
	}
	
	private void getSearch() throws ServletException, IOException, SQLException {
		response.setCharacterEncoding("GB18030");
		String condition = request.getParameter("search");
		String value = new String(request.getParameter("value").getBytes("ISO8859_1"), "GB18030");
		String where = condition + "=\"" + value + "\"";// 拼接查询字符串
		List<Object> list = user.getSearch(where);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/ShowAdministrator.jsp").forward(request, response);
	}

	private void chagePassword() throws IOException, NumberFormatException, SQLException {
		response.setContentType("text/html;charset=GB18030");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String userId = session.getAttribute("user_id").toString();
		String oldPwd = new String(request.getParameter("OldPwd").getBytes("ISO8859_1"), "GB18030");
		String newPwd = new String(request.getParameter("NewPwd").getBytes("ISO8859_1"), "GB18030");
		if (user.checkPwd(userId, oldPwd)) {
			if (user.updataPwd(userId, newPwd)) {
				out.write("<script>alert('密码更改成功~~~');location.href=location.href = '/FitnessRoom/UserServlet?type=4';</script>");
			} else {
				out.write("<script>alert('密码更改失败~~~');location.href=location.href = '/FitnessRoom/UserServlet?type=4';</script>");
			}
		} else {
			out.write("<script>alert('原始密码错误~~~');location.href=location.href = '/FitnessRoom/UserServlet?type=4';</script>");
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
