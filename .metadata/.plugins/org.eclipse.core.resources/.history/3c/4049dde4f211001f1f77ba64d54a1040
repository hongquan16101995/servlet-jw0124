package service;

import java.util.ArrayList;
import java.util.List;

import model.Category;

public class CategoryService {
	private List<Category> categories;
	private static CategoryService categoryService = null;

	private CategoryService() {
		super();
		this.categories = new ArrayList<>();
	}
	
	public static CategoryService getInstance() {
		if (categoryService == null) {
			categoryService = new CategoryService();
		}
		return categoryService;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void createCategory(Category category) {
		this.categories.add(category);
	}
	
	public Category getById(int id) {
		for(Category c : categories) {
			if (c.getId() == id) {
				return c;
			}
		}
		return null;
	}
	
	public void updateCategory(int id, Category category) {
		Category c = getById(id);
		if(c != null) {
			c.setName(category.getName());
		}
	}
}
