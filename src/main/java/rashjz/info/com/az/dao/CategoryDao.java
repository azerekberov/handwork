/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rashjz.info.com.az.dao;

import java.util.List;
import rashjz.info.com.az.entity.Category;

/**
 *
 * @author Azik
 */
public interface CategoryDao {
     
    public void saveCategory(Category category);
    
    public void updateCategory(Category category);
    
    public void deleteCategory(Category category);
    
    public  List<Category> getAllCategorys();

}
