package service;

import java.util.ArrayList;
import java.util.List;

import model.Product;

public class ProductService {
	private List<Product> products;

	public ProductService() {
		super();
		this.products = new ArrayList<>();
		this.products.add(new Product(1, "bimbim", 10000, 100, "https://img.lovepik.com/freepng/12/12/80/48358PICfr9i132k3fwAj_PIC2018.png_wh860.png"));
	}

	public List<Product> getProducts() {
		return products;
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
		}
	}
}
