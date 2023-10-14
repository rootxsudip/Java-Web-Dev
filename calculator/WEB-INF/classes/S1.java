import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class S1 extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String n1 = req.getParameter("n1");
        String n2 = req.getParameter("n2");

        // out.println(n1 + n2);
        // Parsing and addition
        int num1 = Integer.parseInt(n1);
        int num2 = Integer.parseInt(n2);
        int sum = num1 + num2;

        // Set attribute
        req.setAttribute("sum", sum);

        // Forward the request to different servlet
        RequestDispatcher rd = req.getRequestDispatcher("S2");
        rd.forward(req, res);
    }
}
