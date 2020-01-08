import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/order-summary")
public class OrderSummaryServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setHeader("Content-type", "text/html");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String quantity = request.getParameter("quantity");
        out.println("You have requested " + name + "." +
                    "<br><br>" +
                    "You have requested " + quantity + "."
        );
    }

}
