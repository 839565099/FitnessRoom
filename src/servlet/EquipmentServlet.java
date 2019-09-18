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
 * ����Servlet
 * 
 * @author ������~~~ 2019��4��15��
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
		case 1:// ����1����ɾ�����е�����
			try {
				delete();
			} catch (SQLException e2) {
				// TODO �Զ����ɵ� catch ��
				e2.printStackTrace();
			}
			break;
		case 3:// ����3����������������
			try {
				insert();
			} catch (NumberFormatException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			break;
		case 4:// ����4�����ȡ������Ϣ
			try {
				getData();
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			break;
		case 5:// ����5������ݲ�ѯ������ȡ������Ϣ
			try {
				getSearch();
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
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
					out.write("<script>alert('������ӳɹ���'); location.href = 'EquipmentServlet?type=4';</script>");
				} else {
					out.write("<script>alert('������ʧ�ܣ�'); location.href = 'EquipmentServlet?type=4';</script>");
				}
			} 
		} else {
			out.write("<script>alert('�����ظ����������ʧ�ܣ�'); location.href = 'EquipmentServlet?type=4';</script>");
		}
	}

	// ��ȡ�������������б�
	private void getData() throws ServletException, IOException, SQLException {
		List<Object> list = equipment.getData();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/ShowEquipment.jsp").forward(request, response);// ����ת��
	}

	private void getSearch() throws ServletException, IOException, SQLException {
		response.setContentType("text/html;charset=GB18030");
		String condition = request.getParameter("condition");// ��ȡ��ѯ�ֶε�����
		String value = new String(request.getParameter("value").getBytes("ISO8859_1"), "GB18030");
		String where = condition + "=\"" + value + "\"";// ƴ�Ӳ�ѯ�ַ���
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
