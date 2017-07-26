package com.gokcan.springboot.Repository;

import com.gokcan.springboot.Model.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Skylifee7 on 26/07/2017.
 */

public interface RoleRepository extends JpaRepository<UserRole, Long> {
}
