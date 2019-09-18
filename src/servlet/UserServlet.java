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
 * �û�Servlet
 * @author ������~~~
 *2019��4��10��
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
		case 6:// ����6�������������
			try {
				chagePassword();
			} catch (NumberFormatException | SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			break;
		default:
			break;
		}
	}
//	
	private void delete() throws IOException, SQLException {
		String user_id = request.getParameter("user_id");// ��ȡǰ̨ͨ��get��ʽ��������Id
		user.delete(user_id);// ִ��ɾ������
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
			out.write("<script>alert('�����޸ĳɹ���'); location.href = '/FitnessRoom/UserServlet?type=4';</script>");
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
				out.write("<script>alert('������ӳɹ�~~~~'); location.href = '/FitnessRoom/UserServlet?type=4';</script>");
			} else {
				out.write("<script>alert('������ʧ�ܣ�!!!'); location.href = '/FitnessRoom/UserServlet?type=4';</script>");
			}
		} else {
			out.write("<script>alert('�˺��Ѵ���'); location.href = '/FitnessRoom/UserServlet?type=4';</script>");
		}
	}
	
	private void getData() throws ServletException, IOException, SQLException {
		List<Object> list = user.getData();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/ShowAdministrator.jsp").forward(request, response);// ����ת��
	}
	
	private void getSearch() throws ServletException, IOException, SQLException {
		response.setCharacterEncoding("GB18030");
		String condition = request.getParameter("search");
		String value = new String(request.getParameter("value").getBytes("ISO8859_1"), "GB18030");
		String where = condition + "=\"" + value + "\"";// ƴ�Ӳ�ѯ�ַ���
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
				out.write("<script>alert('������ĳɹ�~~~');location.href=location.href = '/FitnessRoom/UserServlet?type=4';</script>");
			} else {
				out.write("<script>alert('�������ʧ��~~~');location.href=location.href = '/FitnessRoom/UserServlet?type=4';</script>");
			}
		} else {
			out.write("<script>alert('ԭʼ�������~~~');location.href=location.href = '/FitnessRoom/UserServlet?type=4';</script>");
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
