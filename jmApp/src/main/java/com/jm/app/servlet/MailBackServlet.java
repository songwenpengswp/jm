/*package com.jm.app.servlet;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MailBackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String registerID = request.getParameter("registerId");
		if (registerID == null) {
			request.getRequestDispatcher("/index.jsp").forward(request,
					response);
			return;
		}

		String registerName = (String) request.getSession().getAttribute(
				registerID);
		// 如果session设置的有限时间过期，则注册不成功，直接返回
		if (registerName == null || registerName.equals("")) {
			request.getRequestDispatcher("/index.jsp").forward(request,
					response);
			return;
		}

		request.setAttribute("registerName", registerName);
		request.getRequestDispatcher("/registSuccess.jsp").forward(request,
				response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}*/