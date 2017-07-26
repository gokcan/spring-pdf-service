package com.gokcan.springboot;

import java.util.List;

/**
 * @author Skylifee7 on 23/07/2017.
 */
public interface UserDAO {

    List<User> getAllUsers();

    User getUserById(int userId);

    void addUser(User user);

    void updateUser(User user);

    void deleteUser(int userId);

    boolean userExists(String title, String category);
}
