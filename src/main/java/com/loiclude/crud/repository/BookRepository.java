package com.loiclude.crud.repository;

import com.loiclude.crud.model.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {
    @Query("FROM Book b WHERE b.name LIKE CONCAT('%',:name,'%')")
    List<Book> findAllByName(@Param("name") String name, Pageable pageable);
}
