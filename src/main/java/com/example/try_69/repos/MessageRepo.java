package com.example.try_69.repos;

import com.example.try_69.domain.Message;
import com.example.try_69.domain.User;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.domain.Pageable;

public interface MessageRepo extends CrudRepository<Message, Long> {

    Page<Message> findAll(Pageable pageable);

    Page<Message> findByEmail(String email, Pageable pageable);

    Page<Message> findByAuthor(User user, Pageable pageable);

}
