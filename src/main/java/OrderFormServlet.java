import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/order-form")
public class OrderFormServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setHeader("Content-type", "text/html");
        PrintWriter out = response.getWriter();
        out.println("<form method=\"POST\" action=\"/order-summary\">\n" +
                "    <label for=\"name\">Product Name:</label>\n" +
                "    <input id=\"name\" name=\"name\" placeholder=\"Enter product name.\" />\n" +
                "<br><br>" +
                "    <label for=\"quantity\">Quantity:</label>\n" +
                "    <input id=\"quantity\" name=\"quantity\" placeholder=\"How many?\" />\n" +
                "<br><br>" +
                "    <input type=\"submit\">\t" +
                "</form>");

    }
}
