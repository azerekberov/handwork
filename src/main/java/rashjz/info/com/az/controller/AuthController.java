/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rashjz.info.com.az.controller;

import java.io.Serializable;
import java.util.HashSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import rashjz.info.com.az.domain.RegistrationForm;
import rashjz.info.com.az.entity.UserRoles;
import rashjz.info.com.az.entity.Users;
import rashjz.info.com.az.service.UserService;

/**
 *
 * @author Mobby
 */
@Controller
public class AuthController implements Serializable {

    private static final Logger logger = LoggerFactory.getLogger(AuthController.class.getName());

    @Autowired
    UserService userService;

    @Autowired
    MessageSource messageSource;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getIndexPage(Model model) {
        return "redirect:/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getLoginPage(Model model) {
        model.addAttribute("userReg", new RegistrationForm());
        return "login";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
            
        }
        //You can redirect wherever you want, but generally it's a good idea to show login screen again.
        return "redirect:/login?logout";
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String makeSomeAction(@Valid @ModelAttribute("userReg") RegistrationForm form, BindingResult result, Model model, final RedirectAttributes redirectAttributes) {
        logger.info("register - - - " + form.toString()+" "+result.hasErrors());
        if (result.hasErrors()) {
            logger.info("********* "+result.getObjectName()+" "+result.getFieldError().getField());
            return "login";
        } else {
            Users user = new Users();
            user.setFirstname(form.getFirstName());
            user.setLastname(form.getLastName());
            user.setPassword(form.getPasswd());
            user.setUsername(form.getEmail());
            user.setEnabled((byte) 1);

            UserRoles roles = new UserRoles();
            roles.setRole("ROLE_USER");
            roles.setUserId(user);

            final HashSet<UserRoles> userRoleses = new HashSet<UserRoles>();
            userRoleses.add(roles);
            user.setUserRolesCollection(userRoleses);

            userService.persist(user);

        }
           return "redirect:/login";
    }
    
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String getIndexAdmin(Model model) {
        return "admin";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String gethLoginPage(Model model) {
        return "index";
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public String getViewPage(Model model) {
        return "view";
    }
}
