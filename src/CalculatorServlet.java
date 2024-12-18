import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.text.DecimalFormat;

public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Parsing input values
        double num1 = Double.parseDouble(request.getParameter("num1"));
        double num2 = Double.parseDouble(request.getParameter("num2"));
        String operation = request.getParameter("operation");
        double result = 0;

        // Perform calculation based on selected operation
        switch (operation) {
            case "add":
                result = num1 + num2;
                break;
            case "subtract":
                result = num1 - num2;
                break;
            case "multiply":
                result = num1 * num2;
                break;
            case "divide":
                if (num2 != 0) {
                    result = num1 / num2;
                } else {
                    result = Double.NaN;  // Error for division by zero
                }
                break;
        }

        // Format the result to 2 decimal places using DecimalFormat
        DecimalFormat df = new DecimalFormat("#.##");
        String resultString = df.format(result); // Format the result as String

        // Set the result as a request attribute
        request.setAttribute("result", resultString);

        // Forward the request to the JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("calculator.jsp");
        dispatcher.forward(request, response);
    }
}
