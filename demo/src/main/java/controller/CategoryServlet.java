package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Category;
import service.CategoryService;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/categories")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CategoryService categoryService = new CategoryService();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action == null) {
			action = "";
		}
		switch(action) {
			case "createGet":
				createGet(request, response);
				break;
			case "updateGet":
				updateGet(request, response);
				break;
			default:
				displayAllCategory(request, response);
				break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action == null) {
			action = "";
		}
		switch(action) {
			case "createPost":
				createPost(request, response);
				break;
			case "updatePost":
				updatePost(request, response);
				break;
		}
	}
	
	private void displayAllCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Category> categories = categoryService.getCategories();
		request.setAttribute("categories", categories);
		request.getRequestDispatcher("category/list.jsp").forward(request, response);
	}

	private void createGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Category category = new Category();
		request.setAttribute("category", category);
		request.getRequestDispatcher("category/create.jsp").forward(request, response);
	}

	private void createPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		categoryService.createCategory(new Category(name));
		response.sendRedirect("/demo/categories");
	}

	private void updateGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Category category = categoryService.getById(id);
		request.setAttribute("category", category);
		request.getRequestDispatcher("category/update.jsp").forward(request, response);
	}

	private void updatePost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		categoryService.updateCategory(id, new Category(id, name));
		response.sendRedirect("/demo/categories");
	}
}
