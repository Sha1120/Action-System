package lk.jiat.action.model;

import java.util.ArrayList;
import java.util.List;
import lk.jiat.action.model.User;

public class UserRegistry {
    private static List<User> users = new ArrayList<>();

    public static void register(User user) {
        users.add(user);
    }

    public static boolean isUsernameTaken(String username) {
        return users.stream().anyMatch(u -> u.getUsername().equalsIgnoreCase(username));
    }

    public static boolean isEmailTaken(String email) {
        return users.stream().anyMatch(u -> u.getEmail().equalsIgnoreCase(email));
    }

    public static User getUserByUsernameOrEmail(String input) {
        return users.stream()
                .filter(u -> u.getUsername().equalsIgnoreCase(input) || u.getEmail().equalsIgnoreCase(input))
                .findFirst()
                .orElse(null);
    }

}
