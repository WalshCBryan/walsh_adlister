import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {
    int hitCount = 0;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        hitCount++;
        PrintWriter pw = res.getWriter();
        pw.println("<h1>Hitcount is " + hitCount + "!</h1>");
    }
}

