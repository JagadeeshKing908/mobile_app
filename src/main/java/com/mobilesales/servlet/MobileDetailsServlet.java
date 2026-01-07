@WebServlet("/mobile")
public class MobileDetailsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            int id = Integer.parseInt(req.getParameter("id"));
            Mobile mobile = new MobileDAO().getMobileById(id);
            req.setAttribute("mobile", mobile);
            req.getRequestDispatcher("mobile.jsp").forward(req, res);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
