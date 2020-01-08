import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/pong")
public class PongServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setHeader("Content-type", "text/html");
        PrintWriter out = response.getWriter();
        out.println("<form method=\"get\" action=\"/ping\">\n" +
                "    <input type=\"submit\">\t" +
                "</form>");;
    }
}
