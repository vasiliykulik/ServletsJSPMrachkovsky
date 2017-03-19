package ua.goit.java.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Молния on 19.03.2017.
 */
public class HelloServlet extends HttpServlet {
    @Override
    // У объекта request просим параметры
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getResponse(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getResponse(request, response);
    }

    private void getResponse(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        String title = "Using " + request.getMethod() + " Method to Read Form Data";
        String docType = "<!doctype html public \"-//w3c//dtd html 4.0 transitional//en\">\n";
        // и вот это будет response body
        out.println(docType+
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor=\"#f0f0f0\">\n" +
                "<h1 align=\"center\">" + title + "</h1>\n" +
                "<ul>\n" +
                // неважно как пришли как параметры или в body
                " <li><b>First Name</b>: "
                + request.getParameter("first_name") + "\n" +
                " <li><b>Last Name</b>: "
                + request.getParameter("last_name") + "\n" +
                "<ul>\n" +
                "</body></html>");
    }
}
