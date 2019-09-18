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

import entity.Card;

/**
 * ��Servlet
 * @author ������~~~
 *2019��4��13��
 */
@WebServlet("/CardServlet")
public class CardServlet extends HttpServlet {
    Card card=new Card();
	HttpServletRequest request;
	HttpServletResponse response;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
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
		String card_id=request.getParameter("card_id");
		card.delete(card_id);//ִ��ɾ������
		response.sendRedirect("CardServlet?type=4");
	}
	
	private void update() throws UnsupportedEncodingException, SQLException{
		String card_id=new String(request.getParameter("card_id").getBytes("ISO8859_1"),"GB18030");
		String coach_id=new String(request.getParameter("s_id").getBytes("ISO8859_1"),"GB18030");
		String user_name=new String(request.getParameter("user_name").getBytes("ISO8859_1"),"GB18030");
		String user_gender=new String(request.getParameter("user_gender").getBytes("ISO8859_1"),"GB18030");
		String user_addr=new String(request.getParameter("user_addr").getBytes("ISO8859_1"),"GB18030");
		String card_phone=new String(request.getParameter("c_num").getBytes("ISO8859_1"),"GB18030");

		if(card.update(card_id,coach_id,user_name,user_gender,user_addr,card_phone)==1){
			try {
				response.sendRedirect("/FitnessRoom/CardServlet?type=4");
			} catch (IOException e) {
				e.printStackTrace();//�쳣����
			}
		}
	}
	
	private void insert() throws UnsupportedEncodingException, IOException, SQLException{
		response.setContentType("text/html;charset=GB18030");
		PrintWriter out=response.getWriter();
	    SimpleDateFormat dateFormat =new    SimpleDateFormat("yyyyMMddHHmmss"); 
	    String card_id=dateFormat.format(new Date());
		String coach_id=new String(request.getParameter("s_id").getBytes("ISO8859_1"),"GB18030");
		String user_name=new String(request.getParameter("user_name").getBytes("ISO8859_1"),"GB18030");
		String user_gender=new String(request.getParameter("user_gender").getBytes("ISO8859_1"),"GB18030");
		String user_addr=new String(request.getParameter("user_addr").getBytes("ISO8859_1"),"GB18030");
		String card_phone=new String(request.getParameter("c_num").getBytes("ISO8859_1"),"GB18030");

		if(!card.check(card_id)){
			if(card.insertEntity(card_id,coach_id,user_name,user_gender,user_addr,card_phone)==1)
			{
				out.write("<script>alert('������ӳɹ���'); location.href = 'CardServlet?type=4';</script>");
			}
			else {
				out.write("<script>alert('������ʧ�ܣ�'); location.href = 'CardServlet?type=4';</script>");
			}
		}
		else {
			out.write("<script>alert('id�ظ����������ʧ�ܣ�'); location.href = 'CardServlet?type=4';</script>");
		}
	}
	
	//��ȡ�������������б�
	private void getData() throws ServletException, IOException, SQLException{
		List<Object> list=card.getData();//��ȡ�����б�
		request.setAttribute("list",list);
		request.getRequestDispatcher("/ShowCard.jsp").forward(request, response);//����ת��
	}
	
	private void getSearch() throws ServletException, IOException, SQLException{
		String condition=request.getParameter("condition");
		String value = new String(request.getParameter("value").getBytes("ISO8859_1"), "GB18030");
		String where=condition+"=\""+value+"\"";//ƴ�Ӳ�ѯ�ַ���
		List<Object> list=card.getSearch(where);
		request.setAttribute("list",list);
		request.setAttribute("condition",condition);
		request.setAttribute("value",value);
		request.getRequestDispatcher("/ShowCard.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
