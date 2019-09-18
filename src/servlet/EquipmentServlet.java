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

import entity.Equipment;

/**
 * 器材Servlet
 * 
 * @author 张翼麒~~~ 2019年4月15日
 */
@WebServlet("/EquipmentServlet")
public class EquipmentServlet extends HttpServlet {
	HttpServletRequest request;
	HttpServletResponse response;
	Equipment equipment = new Equipment();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EquipmentServlet() {
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
		default:
			break;
		}

	}

	private void delete() throws IOException, SQLException {
		response.setContentType("text/html;charset=GB18030");
		String equipment_id = new String(request.getParameter("c_id").getBytes("ISO8859_1"), "GB18030");
		equipment.delete(equipment_id);
		response.sendRedirect("EquipmentServlet?type=4");
	}



	private void insert() throws UnsupportedEncodingException, IOException, SQLException {
		response.setContentType("text/html;charset=GB18030");
		PrintWriter out = response.getWriter();

		String equipment_name = new String(request.getParameter("uname").getBytes("ISO8859_1"), "GB18030");
		String equipment_id = request.getParameter("card_id");
		String equipment_num = new String(request.getParameter("c_num").getBytes("ISO8859_1"), "GB18030");
		SimpleDateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
		String entry_date = dFormat.format(new Date());
		String equipment_money = request.getParameter("price");
		if (!equipment.checkExist(equipment_id)) {
			if ((equipment_id != null && equipment_id != "") && (equipment_num != null && equipment_num != "")) {
				if (equipment.insert(equipment_name, equipment_id, equipment_num, entry_date, equipment_money) == 1) {
					out.write("<script>alert('数据添加成功！'); location.href = 'EquipmentServlet?type=4';</script>");
				} else {
					out.write("<script>alert('数据添失败！'); location.href = 'EquipmentServlet?type=4';</script>");
				}
			} 
		} else {
			out.write("<script>alert('主键重复，数据添加失败！'); location.href = 'EquipmentServlet?type=4';</script>");
		}
	}

	// 获取对象所有数据列表
	private void getData() throws ServletException, IOException, SQLException {
		List<Object> list = equipment.getData();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/ShowEquipment.jsp").forward(request, response);// 请求转发
	}

	private void getSearch() throws ServletException, IOException, SQLException {
		response.setContentType("text/html;charset=GB18030");
		String condition = request.getParameter("condition");// 获取查询字段的名称
		String value = new String(request.getParameter("value").getBytes("ISO8859_1"), "GB18030");
		String where = condition + "=\"" + value + "\"";// 拼接查询字符串
		List<Object> list = equipment.getSearch(where);
		request.setAttribute("list", list);
		request.setAttribute("condition", condition);
		request.setAttribute("value", value);
		request.getRequestDispatcher("/ShowEquipment.jsp").forward(request, response);
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
