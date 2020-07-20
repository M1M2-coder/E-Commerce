package net.m2m.shoppingbackend.dao;


import java.util.List;

import net.m2m.shoppingbackend.dto.Category;

public interface CategoryDAO {
	List<Category> list();

	Category get(int id);

}
