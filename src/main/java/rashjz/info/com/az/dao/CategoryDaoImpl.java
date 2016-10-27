/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rashjz.info.com.az.dao;

import java.io.Serializable;
import java.util.List;
import java.util.logging.Logger;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import rashjz.info.com.az.entity.Category;

/**
 *
 * @author Azik
 */
@Repository
public class CategoryDaoImpl extends AbstractDao<Integer, Category> implements Serializable,  CategoryDao{

    private static final Logger LOG = Logger.getLogger(CategoryDaoImpl.class.getName());
    @Override
    public void saveCategory(Category category) {
        LOG.info("save category : "+category.toString());
        
        super.persist(category);
        
    }

    @Override
    public void updateCategory(Category category) {
        super.update(category);
    }

    @Override
    public void deleteCategory(Category category) {
        category.setStatus("d");
       super.update(category);
    }

    @Override
    public List<Category> getAllCategorys() {
        Criteria criteria=getSession().createCriteria(Category.class);
        return criteria.list();
 
    }
    public static void main(String[] args) {
        CategoryDaoImpl s=new CategoryDaoImpl();
        System.out.println(s.getAllCategorys().size());
    }
}
