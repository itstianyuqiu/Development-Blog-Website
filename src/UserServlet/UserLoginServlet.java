package UserServlet;

import DAO.UserDAO;
import POJO.UserPOJO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

public class UserLoginServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try (UserDAO userDAO = new UserDAO()) {
            String username = req.getParameter("username");
            String password = req.getParameter("password");

            UserPOJO userPOJO = userDAO.queryEntriesByUsername(username);
            //check if the login is correct, if correct then forward to user home page
            if (userPOJO != null && password.equals(userPOJO.getPassword())) {

                req.getSession().setAttribute("userPOJO", userPOJO);
//                req.getRequestDispatcher("/homepage.jsp").forward(req, resp);


                //Kien's gr stuffs
                req.getSession().setAttribute("userID", "1");
                req.getSession().setAttribute("userLogged", true);
                req.getSession().setAttribute("buttonClicked", false);
                resp.sendRedirect("/ArticleServlet");

            }
            //if not correct then back to login page again
            else {
                resp.sendRedirect("/index_login.jsp");//do with ajax!!!
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}