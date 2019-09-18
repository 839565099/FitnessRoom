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
@WebServlet("/Ajax04")
public class Ajax04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajax04() {
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
				"        <td>ƻ��</td>\n" +
				"        <td>52ǧ��</td>\n" +
				"        <td>0.20g</td>\n" +
				"        <td>13.50g</td>\n" +
				"        <td>0.20g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>�㽶</td>\n" +
				"        <td>91ǧ��</td>\n" +
				"        <td>1.4g</td>\n" +
				"        <td>22g</td>\n" +
				"        <td>0.20g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>����</td>\n" +
				"        <td>19ǧ��</td>\n" +
				"        <td>0.9g</td>\n" +
				"        <td>4g</td>\n" +
				"        <td>0.20g</td>\n" +
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
