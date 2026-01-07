@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        String u = req.getParameter("username");
        String p = req.getParameter("password");

        try {
            UserDAO dao = new UserDAO();
            if (dao.login(u, p)) {
                req.getSession().setAttribute("username", u);
                res.sendRedirect("index.jsp");
            } else {
                res.sendRedirect("index.jsp?loginError=true");
            }
        } catch (Exception e) {
            res.sendRedirect("index.jsp?error=db");
        }
    }
}
