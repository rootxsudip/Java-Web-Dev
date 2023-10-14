import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class S2 extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");

        try (PrintWriter out = res.getWriter();) {
            out.println("<html><body>");
            int num1 = Integer.parseInt(req.getParameter("n1"));
            int num2 = Integer.parseInt(req.getParameter("n2"));

            int mul = num1 * num2;

            // get attribute from the s1
            int sum = (int) req.getAttribute("sum");

            out.println("Sum = " + sum);
            out.println("Multiply = " + mul);
            out.println("</body></html>");

        }
    }
}
