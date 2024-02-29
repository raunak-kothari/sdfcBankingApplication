package com.web.userRepo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.entity.Customers;

@Repository
public interface CustomerRepo extends CrudRepository<Customers, Integer> {

}
