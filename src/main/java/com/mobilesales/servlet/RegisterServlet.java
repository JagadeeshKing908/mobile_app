@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        try {
            new UserDAO().register(
                req.getParameter("username"),
                req.getParameter("password"),
                req.getParameter("email")
            );
            res.sendRedirect("index.jsp?registerSuccess=true");
        } catch (Exception e) {
            res.sendRedirect("index.jsp?registerError=true");
        }
    }
}
