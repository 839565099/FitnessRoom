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
 * �򿨳���Servlet
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
		case 6:// ��ʾ�ڹ��ڵ���
			try {
				getNO();
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			break;
		case 10:// �򿨳���
			try {
				setOut();
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
		String sign_id = request.getParameter("fixed_id");
		sign.delete(sign_id);// ִ��ɾ������
		response.sendRedirect("SignInServlet?type=4");
	}

	// �볡����
	private void setOut() throws IOException, SQLException {
		String sign_id = new String(request.getParameter("fixed_id").getBytes("ISO8859_1"), "GB18030");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
		String out_date = dateFormat.format(new Date());
		if (sign.setOut(sign_id, out_date) == 1) {
			response.sendRedirect("SignInServlet?type=6");
		}
	}



	// �������ݲ���
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
				out.write("<script>alert('������ӳɹ���'); location.href = 'SignInServlet?type=6';</script>");
			} else {
				out.write("<script>alert('������ʧ�ܣ�'); location.href = 'SignInServlet?type=6';</script>");
			}
		} else {
			out.write("<script>alert('ID�ظ����������ʧ�ܣ�'); location.href = 'SignInServlet?type=4';</script>");
		}
	}

	// ��ȡ�������������б�
	private void getData() throws ServletException, IOException, SQLException {

		List<Object> list = sign.getData();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/ShowSignIn.jsp").forward(request, response);// ����ת��
	}

	// ��ʾ������Ա
	private void getNO() throws ServletException, IOException, SQLException {

		List<Object> list = sign.getNo();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/AddSignIn.jsp").forward(request, response);// ����ת��
	}

	// ���ݲ�ѯ������ȡ�������������б�
	private void getSearch() throws ServletException, IOException, SQLException {
		String condition = request.getParameter("condition");//��ȡ��ѯ����
		String value = new String(request.getParameter("value").getBytes("ISO8859_1"), "GB18030");
		String where = condition + "=\"" + value + "\"";// ƴ�Ӳ�ѯ�ַ���
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
