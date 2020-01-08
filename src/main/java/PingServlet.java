import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ping")
public class PingServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setHeader("Content-type", "text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>PING</h1>" +
                    "<form method=\"get\" action=\"/pong\">\n" +
                    "<input type=\"submit\">\t" +
                    "</form>");;
    }
}
