package ajax;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Ajax
 */
@WebServlet("/Ajax06")
public class Ajax06 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajax06() {
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
				"        <td>ȸ������</td>\n" +
				"        <td>450ǧ��</td>\n" +
				"        <td>8.3g</td>\n" +
				"        <td>80.8g</td>\n" +
				"        <td>13.33g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>�ڿ���</td>\n" +
				"        <td>1ǧ��</td>\n" +
				"        <td>0g</td>\n" +
				"        <td>0.3g</td>\n" +
				"        <td>0g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>�ɿڿ���</td>\n" +
				"        <td>43ǧ��</td>\n" +
				"        <td>0.1g</td>\n" +
				"        <td>10.8g</td>\n" +
				"        <td>0g</td>\n" +
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
