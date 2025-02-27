package club.admin;
import club.business.Book;
import club.data.BookIO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jgohe
 */
@WebServlet(name = "JGHPDisplayBooksServlet", urlPatterns = {"/JGHPDisplayBooks"})
public class JGHPDisplayBooksServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String path = getServletContext().getRealPath("/WEB-INF/books.txt");
        ArrayList<Book> books = BookIO.getBooks(path);
        
        request.setAttribute("books", books);
        getServletContext().getRequestDispatcher("/JGHPDisplayBooks.jsp").forward(request, response);
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
