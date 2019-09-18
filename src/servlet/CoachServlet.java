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
 * ����ԱServlet
 * @author ������~~~
 *2019��4��12��
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
		case 1:// ����1����ɾ�����е�����
			try {
				delete();
			} catch (SQLException e2) {
				// TODO �Զ����ɵ� catch ��
				e2.printStackTrace();
			}
			break;
		case 2:// ����2������±��е�����
			try {
				update();
			} catch (SQLException e1) {
				// TODO �Զ����ɵ� catch ��
				e1.printStackTrace();
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
				e.printStackTrace();// �쳣����
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
				out.write("<script>alert('������ӳɹ���'); location.href = '/FitnessRoom/CoachServlet?type=4';</script>");
			} else {
				out.write("<script>alert('������ʧ�ܣ�'); location.href = '/FitnessRoom/CoachServlet?type=4';</script>");
			}
		} else {
			out.write("<script>alert('id�ظ����������ʧ�ܣ�'); location.href = '/FitnessRoom/CoachServlet?type=4';</script>");
		}
	}

	private void getData() throws ServletException, IOException, SQLException {
		List<Object> list = coach.getData();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/ShowCoach.jsp").forward(request, response);// ����ת��
	}

	private void getSearch() throws ServletException, IOException, SQLException {
		String condition = request.getParameter("condition");//��ȡ��ѯ����
		String value = new String(request.getParameter("value").getBytes("ISO8859_1"), "GB18030");
		if (value.equals("��ְ")) {
			String where = condition + "=0";
			List<Object> list = coach.getSearch(where);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/ShowCoach.jsp").forward(request, response);
		}
		if (value.equals("�ݼ�")) {
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
