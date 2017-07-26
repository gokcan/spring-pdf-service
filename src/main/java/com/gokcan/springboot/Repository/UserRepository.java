package com.gokcan.springboot.Repository;

import com.gokcan.springboot.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

}
