package ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ajax
 */
@WebServlet("/Ajax")
public class Ajax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("GB18030");
	        response.setContentType("text/html;charset=GB18030");
	        PrintWriter writer = response.getWriter();
	        writer.println("<table  border=\"1\" style=\"border: lightskyblue double 2px;width: 700px;height: 400px; margin:0 auto; text-align: center\">\n" +
					"    <tr>\n" +
					"        <td>(ÿ100g)</td>\n" +
					"        <td>����</td>\n" +
					"        <td>������</td>\n" +
					"        <td>̼ˮ������</td>\n" +
					"        <td>֬��</td>\n" +
					"    </tr>\n" +
					"    <tr>\n" +
					"        <td>�׷�</td>\n" +
					"        <td>116ǧ��</td>\n" +
					"        <td>2.6g</td>\n" +
					"        <td>25.9g</td>\n" +
					"        <td>0.3g</td>\n" +
					"    </tr>\n" +
					"    <tr>\n" +
					"        <td>����</td>\n" +
					"        <td>106ǧ��</td>\n" +
					"        <td>4.00g</td>\n" +
					"        <td>22.80g</td>\n" +
					"        <td>1.20g</td>\n" +
					"    </tr>\n" +
					"    <tr>\n" +
					"        <td>��ͷ</td>\n" +
					"        <td>221ǧ��</td>\n" +
					"        <td>7.00g</td>\n" +
					"        <td>47.00g</td>\n" +
					"        <td>1.10g</td>\n" +
					"    </tr>\n" +
					"</table>");






	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
