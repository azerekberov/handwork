/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rashjz.info.com.az.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import rashjz.info.com.az.entity.UserRoles;
 

/**
 *
 * @author Rashad Javadov
 */
public class AuthoritiesConverter {

    public static Collection<GrantedAuthority> getAuthorities(Set set) {
        //make everyone ROLE_USER
        Collection<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
        if (set == null) {
            GrantedAuthority grantedAuthority = new GrantedAuthority() {
                //anonymous inner type
                public String getAuthority() {
                    return "ROLE_USER";
                }
            };
            grantedAuthorities.add(grantedAuthority);
            return grantedAuthorities;
        } else {
            for (Iterator<UserRoles> it = new HashSet<UserRoles>(set).iterator(); it.hasNext();) {
                UserRoles ur = it.next();
                GrantedAuthority grantedAuthority = new GrantedAuthority() {
                    //anonymous inner type
                    public String getAuthority() {
                        return "ROLE_USER";
                    }
                };
                grantedAuthorities.add(grantedAuthority);
            }
            return grantedAuthorities;
        }
    }

    private String getPrincipal() {
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }
}
