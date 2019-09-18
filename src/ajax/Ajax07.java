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
@WebServlet("/Ajax07")
public class Ajax07 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajax07() {
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
				"        <td>������</td>\n" +
				"        <td>899ǧ��</td>\n" +
				"        <td>0g</td>\n" +
				"        <td>0g</td>\n" +
				"        <td>99.9g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>����</td>\n" +
				"        <td>900ǧ��</td>\n" +
				"        <td>0g</td>\n" +
				"        <td>0g</td>\n" +
				"        <td>89g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>������</td>\n" +
				"        <td>899ǧ��</td>\n" +
				"        <td>0g</td>\n" +
				"        <td>0g</td>\n" +
				"        <td>99.9g</td>\n" +
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
