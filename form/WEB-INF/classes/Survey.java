import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Survey extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>Hello World from java servlet!</h1>");
        out.println("</body></html>");

        String name = request.getParameter("fname");
        String food = request.getParameter("food");

        out.println("<h1>Name: "+name+"</h1>");
        out.println("<h1>Food: "+food+"</h1>");

    }
}

