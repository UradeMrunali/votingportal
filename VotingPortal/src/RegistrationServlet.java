import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Register;
import model.VotingBin;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Create instances of Register and VotingBin
        Register reg = new Register();
        VotingBin vb = new VotingBin();
        
        int count = 0;
        
        // Get user input and set values in the Register object
        reg.setfName(request.getParameter("fname"));
        reg.setdob(request.getParameter("dob"));
        reg.setgender(request.getParameter("gender"));
        reg.setaddress(request.getParameter("address"));
        reg.setcity(request.getParameter("city"));
        reg.setstate(request.getParameter("state"));
        reg.setuname(request.getParameter("uname"));
        reg.setregpwd(request.getParameter("regpwd"));
        
        // Synchronize on the VotingBin object to ensure thread safety
        synchronized (vb) {
            try {
                // Perform user registration
                vb.loginRegistration(reg);
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                // Handle database exceptions here
            }
        }
        
        try {
            // Check if registration was successful
            count = vb.loginCheck(reg);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle database exceptions here
        }
        
        if (count > 0) {
            // Registration successful
            PrintWriter out = response.getWriter();
            out.println("<script>alert('Registration done!');</script>");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
            rd.include(request, response);
        } else {
            // Registration unsuccessful
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('Registration Unsuccessful!');</script>");
            rd.include(request, response);
        }
    }
}
