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

import entity.SignIn;

/**
 * 打卡出入Servlet
 */
@WebServlet("/SignInServlet")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SignIn sign = new SignIn();
	HttpServletRequest request;
	HttpServletResponse response;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignInServlet() {
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
		int handleType = Integer.parseInt(request.getParameter("type").toString());
		switch (handleType) {
		case 1:// 类型1代表删除表中的数据
			try {
				delete();
			} catch (SQLException e2) {
				// TODO 自动生成的 catch 块
				e2.printStackTrace();
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
		case 6:// 显示在馆内的人
			try {
				getNO();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			break;
		case 10:// 打卡出场
			try {
				setOut();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			break;

		default:
			break;
		}
	}

	private void delete() throws IOException, SQLException {
		String sign_id = request.getParameter("fixed_id");
		sign.delete(sign_id);// 执行删除操作
		response.sendRedirect("SignInServlet?type=4");
	}

	// 离场操作
	private void setOut() throws IOException, SQLException {
		String sign_id = new String(request.getParameter("fixed_id").getBytes("ISO8859_1"), "GB18030");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
		String out_date = dateFormat.format(new Date());
		if (sign.setOut(sign_id, out_date) == 1) {
			response.sendRedirect("SignInServlet?type=6");
		}
	}



	// 插入数据操作
	private void insert() throws UnsupportedEncodingException, IOException, SQLException {
		response.setContentType("text/html;charset=GB18030");
		PrintWriter out = response.getWriter();

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		String sign_id = dateFormat.format(new Date());
		String card_id = new String(request.getParameter("card_id").getBytes("ISO8859_1"), "GB18030");
		SimpleDateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
		String entry_date = dFormat.format(new Date());
		String out_date = null;
		if (!sign.checkExist(sign_id)) {
			if (sign.insert(sign_id, card_id, entry_date, out_date) == 1) {
				out.write("<script>alert('数据添加成功！'); location.href = 'SignInServlet?type=6';</script>");
			} else {
				out.write("<script>alert('数据添失败！'); location.href = 'SignInServlet?type=6';</script>");
			}
		} else {
			out.write("<script>alert('ID重复，数据添加失败！'); location.href = 'SignInServlet?type=4';</script>");
		}
	}

	// 获取对象所有数据列表
	private void getData() throws ServletException, IOException, SQLException {

		List<Object> list = sign.getData();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/ShowSignIn.jsp").forward(request, response);// 请求转发
	}

	// 显示场内人员
	private void getNO() throws ServletException, IOException, SQLException {

		List<Object> list = sign.getNo();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/AddSignIn.jsp").forward(request, response);// 请求转发
	}

	// 根据查询条件获取对象所有数据列表
	private void getSearch() throws ServletException, IOException, SQLException {
		String condition = request.getParameter("condition");//获取查询条件
		String value = new String(request.getParameter("value").getBytes("ISO8859_1"), "GB18030");
		String where = condition + "=\"" + value + "\"";// 拼接查询字符串
		List<Object> list = sign.getSearch(where);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/ShowSignIn.jsp").forward(request, response);
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
