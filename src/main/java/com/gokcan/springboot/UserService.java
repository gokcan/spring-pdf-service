package com.gokcan.springboot;

/**
 * @author Skylifee7 on 26/07/2017.
 */
public interface UserService {
    void save(User user);

    User findByUsername(String username);
}