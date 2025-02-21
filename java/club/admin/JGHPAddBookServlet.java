
package club.admin;
import club.data.BookIO;
import club.business.Book;
import java.util.ArrayList;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "JGHPAddBookServlet", urlPatterns = {"/JGHPAddBook"})
public class JGHPAddBookServlet extends HttpServlet {
 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        String description = request.getParameter("description");
        String quantityStr = request.getParameter("quantity");
        
        ArrayList<String> errors = new ArrayList<>();

        if (code == null || code.isEmpty()) {
            errors.add("Book code is required.");
        }
        if (description == null || description.length() < 3) {
            errors.add("Description must have at least 3 characters.");
        }
        int quantity = 0;
        try {
            quantity = Integer.parseInt(quantityStr);
            if (quantity <= 0) {
                errors.add("Quantity must be a positive number.");
            }
        } catch (NumberFormatException e) {
            response.sendRedirect("JGHPError.jsp");
            return;
        }
        if (!errors.isEmpty()) {
            request.setAttribute("errors", errors);
            request.getRequestDispatcher("/JGHPAddBook.jsp").forward(request, response);
            return;
        }

        Book newBook = new Book(code, description, quantity);
        BookIO.insert(newBook, getServletContext().getRealPath("/WEB-INF/books.txt"));
        response.sendRedirect("JGHPDisplayBooks");
    }
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JGHPAddBookServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet JGHPAddBookServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Handles book addition";
    }// </editor-fold>

} 