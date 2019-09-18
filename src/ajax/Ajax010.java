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
@WebServlet("/Ajax010")
public class Ajax010 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajax010() {
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
				"        <td>Ë€ËΩ</td>\n" +
				"        <td>258«ßø®</td>\n" +
				"        <td>13.9g</td>\n" +
				"        <td>64.5g</td>\n" +
				"        <td>1.9g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>πÍ‹ﬂ∏‡</td>\n" +
				"        <td>56«ßø®</td>\n" +
				"        <td>0g</td>\n" +
				"        <td>13.6g</td>\n" +
				"        <td>0g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>≥¬∆§</td>\n" +
				"        <td>278«ßø®</td>\n" +
				"        <td>8.6</td>\n" +
				"        <td>76.5g</td>\n" +
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
