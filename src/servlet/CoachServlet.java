package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Coach;


/**
 * 教练员Servlet
 * @author 张翼麒~~~
 *2019年4月12日
 */
@WebServlet("/CoachServlet")
public class CoachServlet extends HttpServlet {
	Coach coach = new Coach();
	HttpServletRequest request;
	HttpServletResponse response;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CoachServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
		default:
			break;
		}

	}
	private void delete() throws IOException, SQLException{
		String coach_id=request.getParameter("s_id");
		coach.delete(coach_id);
		response.sendRedirect("CoachServlet?type=4");
	}

	private void update() throws UnsupportedEncodingException, SQLException {
		String coach_id = new String(request.getParameter("s_id").getBytes("ISO8859_1"), "GB18030");
		String coach_num = new String(request.getParameter("s_num").getBytes("ISO8859_1"), "GB18030");
		String coach_jb = new String(request.getParameter("s_section").getBytes("ISO8859_1"), "GB18030");
		String coach_zt = new String(request.getParameter("s_st").getBytes("ISO8859_1"), "GB18030");
		String coach_phone = new String(request.getParameter("phone").getBytes("ISO8859_1"), "GB18030");

		if (coach.update(coach_id, coach_num, coach_jb, coach_zt, coach_phone) == 1) {
			try {
				response.sendRedirect("/FitnessRoom/CoachServlet?type=4");
			} catch (IOException e) {
				e.printStackTrace();// 异常处理
			}
		}
	}

	private void insert() throws UnsupportedEncodingException, IOException, SQLException {
		response.setContentType("text/html;charset=GB18030");
		PrintWriter out = response.getWriter();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
		String coach_id = dateFormat.format(new Date());
		String coach_num = new String(request.getParameter("num").getBytes("ISO8859_1"), "GB18030");
		String coach_jb = new String(request.getParameter("jb").getBytes("ISO8859_1"), "GB18030");
		String coach_zt = "0";
		String coach_phone = new String(request.getParameter("phone").getBytes("ISO8859_1"), "GB18030");

		if (!coach.checkExist(coach_id)) {
			if (coach.insert(coach_id, coach_num, coach_jb, coach_zt, coach_phone) == 1) {
				out.write("<script>alert('数据添加成功！'); location.href = '/FitnessRoom/CoachServlet?type=4';</script>");
			} else {
				out.write("<script>alert('数据添失败！'); location.href = '/FitnessRoom/CoachServlet?type=4';</script>");
			}
		} else {
			out.write("<script>alert('id重复，数据添加失败！'); location.href = '/FitnessRoom/CoachServlet?type=4';</script>");
		}
	}

	private void getData() throws ServletException, IOException, SQLException {
		List<Object> list = coach.getData();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/ShowCoach.jsp").forward(request, response);// 请求转发
	}

	private void getSearch() throws ServletException, IOException, SQLException {
		String condition = request.getParameter("condition");//获取查询条件
		String value = new String(request.getParameter("value").getBytes("ISO8859_1"), "GB18030");
		if (value.equals("在职")) {
			String where = condition + "=0";
			List<Object> list = coach.getSearch(where);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/ShowCoach.jsp").forward(request, response);
		}
		if (value.equals("休假")) {
			String where = condition + "=1";
			List<Object> list = coach.getSearch(where);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/ShowCoach.jsp").forward(request, response);
		} else {
			String where = condition + "=\"" + value + "\"";
			List<Object> list = coach.getSearch(where);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/ShowCoach.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
