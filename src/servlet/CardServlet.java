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
 * 卡Servlet
 * @author 张翼麒~~~
 *2019年4月13日
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
		String card_id=request.getParameter("card_id");
		card.delete(card_id);//执行删除操作
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
				e.printStackTrace();//异常处理
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
				out.write("<script>alert('数据添加成功！'); location.href = 'CardServlet?type=4';</script>");
			}
			else {
				out.write("<script>alert('数据添失败！'); location.href = 'CardServlet?type=4';</script>");
			}
		}
		else {
			out.write("<script>alert('id重复，数据添加失败！'); location.href = 'CardServlet?type=4';</script>");
		}
	}
	
	//获取对象所有数据列表
	private void getData() throws ServletException, IOException, SQLException{
		List<Object> list=card.getData();//获取数据列表
		request.setAttribute("list",list);
		request.getRequestDispatcher("/ShowCard.jsp").forward(request, response);//请求转发
	}
	
	private void getSearch() throws ServletException, IOException, SQLException{
		String condition=request.getParameter("condition");
		String value = new String(request.getParameter("value").getBytes("ISO8859_1"), "GB18030");
		String where=condition+"=\""+value+"\"";//拼接查询字符串
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
