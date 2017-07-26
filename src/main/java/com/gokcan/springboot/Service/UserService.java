package com.gokcan.springboot.Service;

import com.gokcan.springboot.Model.User;

/**
 * @author Skylifee7 on 26/07/2017.
 */
public interface UserService {
    void save(User user);

    User findByUsername(String username);
}