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
@WebServlet("/Ajax05")
public class Ajax05 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajax05() {
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
				"        <td>(√ø100g)</td>\n" +
				"        <td>»»¡ø</td>\n" +
				"        <td>µ∞∞◊÷ </td>\n" +
				"        <td>ÃºÀÆªØ∫œŒÔ</td>\n" +
				"        <td>÷¨∑æ</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>∂πΩ¨</td>\n" +
				"        <td>14«ßø®</td>\n" +
				"        <td>1.8g</td>\n" +
				"        <td>1.1g</td>\n" +
				"        <td>0.7g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>∂π∏Ø</td>\n" +
				"        <td>81«ßø®</td>\n" +
				"        <td>8.1g</td>\n" +
				"        <td>4.2g</td>\n" +
				"        <td>3.7g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>∫ÀÃ“</td>\n" +
				"        <td>627«ßø®</td>\n" +
				"        <td>14.9g</td>\n" +
				"        <td>19.1g</td>\n" +
				"        <td>55.80g</td>\n" +
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
