package lk.jiat.action.ejb;

import lk.jiat.action.model.User;

import javax.ejb.Stateful;

@Stateful
public class UserSessionBean {

    private User user;

    public void login(User user) { this.user = user; }
    public User getUser() { return user; }
    public void logout() { this.user = null; }
}
