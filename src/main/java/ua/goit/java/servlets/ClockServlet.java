package ua.goit.java.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

/**
 * Created by Молния on 19.03.2017.
 */
public class ClockServlet extends HttpServlet {
    @Override
    // Если будете делать запрос POST вы сюда не попадете, реализация внутри через else if, приходит два параметра
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // request - обертка над параметрами реквеста
        PrintWriter out = response.getWriter();
        out.println("Current time is "+ new Date());
    }
}
