package rashjz.info.com.az.domain;

/**
 * @author <a href="mailto:sunil.pulugula@wavemaker.com">Sunil Kumar</a>
 * @since 28/3/16
 */
public class RegistrationForm {

    private String userId;
    private String firstName;
    private String lastName;
    private String phoneno;
    private String email;
    private String passwd;
    private String repasswd;
  

    public RegistrationForm() {
    }

    public RegistrationForm(final String userId, final String firstName, final String lastName, final String phoneno, final String email, final String password ) {
        this.userId = userId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneno = phoneno;
        this.email = email;
        this.passwd = password;
 
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhoneno() {
        return phoneno;
    }

    public void setPhoneno(String phoneno) {
        this.phoneno = phoneno;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getRepasswd() {
        return repasswd;
    }

    public void setRepasswd(String repasswd) {
        this.repasswd = repasswd;
    }

 

    public static class Builder {

        private String userId;
        private String firstName;
        private String lastName;
        private String phoneno;
        private String email;
        private String password;
        

        public RegistrationForm build() {
            return new RegistrationForm(userId, firstName, lastName, phoneno, email, password);
        }
    }

    @Override
    public String toString() {
        return "UserRegistrationForm{" + "userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", phoneno=" + phoneno + ", email=" + email + ", passwd=" + passwd + ", repasswd=" + repasswd +  '}';
    }
    
    
}
