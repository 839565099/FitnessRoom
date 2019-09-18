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
@WebServlet("/Ajax08")
public class Ajax08 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajax08() {
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
				"        <td>∑‰√€</td>\n" +
				"        <td>321«ßø®</td>\n" +
				"        <td>0.4g</td>\n" +
				"        <td>75g</td>\n" +
				"        <td>1.9g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>∫ÏÃ«</td>\n" +
				"        <td>389«ßø®</td>\n" +
				"        <td>0.7g</td>\n" +
				"        <td>96.6g</td>\n" +
				"        <td>0g</td>\n" +
				"    </tr>\n" +
				"    <tr>\n" +
				"        <td>’•≤À</td>\n" +
				"        <td>29«ßø®</td>\n" +
				"        <td>2.6</td>\n" +
				"        <td>6.5g</td>\n" +
				"        <td>0.3g</td>\n" +
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
