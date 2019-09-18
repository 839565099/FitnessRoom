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
@WebServlet("/Ajax09")
public class Ajax09 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajax09() {
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
				"        <td>(Ã¿100g)</td>\n" +
				"        <td>ÈÈÁ¿</td>\n" +
				"        <td>µ°°×ÖÊ</td>\n" +
				"        <td>Ì¼Ë®»¯ºÏÎï</td>\n" +
				"        <td>Ö¬·¾</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>±ý¸É</td>\n" +
				"        <td>433Ç§¿¨</td>\n" +
				"        <td>9g</td>\n" +
				"        <td>75g</td>\n" +
				"        <td>12.9g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>µ°¸â</td>\n" +
				"        <td>320Ç§¿¨</td>\n" +
				"        <td>9.5g</td>\n" +
				"        <td>57.6g</td>\n" +
				"        <td>6g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>±ùä¿ÁÜ</td>\n" +
				"        <td>127Ç§¿¨</td>\n" +
				"        <td>2.6</td>\n" +
				"        <td>16.5g</td>\n" +
				"        <td>5.3g</td>\n" +
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
