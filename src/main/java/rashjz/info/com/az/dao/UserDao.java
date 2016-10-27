/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rashjz.info.com.az.dao;

import java.util.List;
import org.hibernate.Criteria;
import rashjz.info.com.az.entity.Users;

/**
 *
 * @author Rashad Javadov
 */
public interface UserDao {

    public Users findByUsername(String username);

    public List<Users> getAllUser();

    public Criteria createEntityCriteria();

    public void delete(Users entity);

    public void update(Users entity);

    public void persist(Users entity);

    public Users getByKey(Integer key);

}
