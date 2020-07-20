package net.m2m.shoppingbackend.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.m2m.shoppingbackend.dao.CategoryDAO;
import net.m2m.shoppingbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDaoImp implements CategoryDAO{
	
	private static List<Category> categories = new ArrayList<>();
	
	static {
		
		// Add First Category.
		Category category = new Category();
		category.setId(1);
		category.setName("Television");
		category.setDescription("Here are more descriptions for the Television");
		category.setImageURL("Cat_1.png");
		
		categories.add(category);
		
		// Add Second Category
		category = new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("Here are more descriptions for the Mobile");
		category.setImageURL("Cat_2.png");
		
		categories.add(category);
		
		// Add Third Category
		category = new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("Here are more descriptions for the Laptop");
		category.setImageURL("Cat_3.png");
		
		categories.add(category);
	
	}

	@Override
	public List<Category> list() {
		return categories;
	}
	
	@Override
	public Category get(int id) {
		for(Category cat: categories) {
			if(cat.getId() == id) return cat;
		}
		return null;
		
	}
	
}
