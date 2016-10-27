/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rashjz.info.com.az.dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import rashjz.info.com.az.entity.Users;

/**
 *
 * @author Rashad Javadov
 */
@Repository
public class UserDaoImpl extends AbstractDao<Integer, Users> implements Serializable, UserDao {

    private static final Logger LOG = Logger.getLogger(UserDaoImpl.class.getName());

    public Users findByUsername(String username) {
        LOG.info("findBySSO : {sso} " + username);
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("username", username));
        Users user = (Users) crit.uniqueResult();
        return user;
    }

    @Override
    public List<Users> getAllUser() {
        List<Users> users = new ArrayList<Users>();
        Transaction trns = null;
        Session session = getSession();
        try {
            users = session.createQuery("from Users ").list();
        } catch (RuntimeException e) {
            e.printStackTrace();
        }
        return users;
    }
}
