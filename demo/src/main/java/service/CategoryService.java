package service;

import java.util.List;

import DAO.CategoryDAO;
import model.Category;

public class CategoryService {
	private CategoryDAO categoryDAO;

	public CategoryService() {
		super();
		this.categoryDAO = new CategoryDAO();
	}

	public List<Category> getCategories() {
		return this.categoryDAO.findAll();
	}

	public void createCategory(Category category) {
		this.categoryDAO.create(category);
	}
	
	public Category getById(int id) {
		return this.categoryDAO.findById(id);
	}
	
	public void updateCategory(int id, Category category) {
		Category c = getById(id);
		if(c != null) {
			this.categoryDAO.update(id, category);
		}
	}
}
