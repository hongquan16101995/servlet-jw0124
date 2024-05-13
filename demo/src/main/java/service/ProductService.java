package service;

import java.util.ArrayList;
import java.util.List;

import model.Product;

public class ProductService {
	private List<Product> products;

	public ProductService() {
		super();
		this.products = new ArrayList<>();
	}

	public List<Product> getProducts() {
		return products;
	}
	
	public List<Product> findByCateogory(int categoryId) {
		List<Product> searchsByC = new ArrayList<>();
		for(Product p : products) {
			if (p.getCategory().getId() == categoryId) {
				searchsByC.add(p);
			}
		}
		return searchsByC;
	}

	public void createProduct(Product product) {
		this.products.add(product);
	}
	
	public Product getById(int id) {
		for(Product p : products) {
			if (p.getId() == id) {
				return p;
			}
		}
		return null;
	}
	
	public void deleteProduct(int id) {
		Product product = getById(id);
		if(product != null) {
			this.products.remove(product);
		}
	}
	
	public void updateProduct(int id, Product product) {
		Product p = getById(id);
		if(p != null) {
			p.setName(product.getName());
			p.setPrice(product.getPrice());
			p.setQuantity(product.getQuantity());
			p.setImage(product.getImage());
			p.setCategory(product.getCategory());
		}
	}
}
