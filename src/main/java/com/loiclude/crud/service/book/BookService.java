package com.loiclude.crud.service.book;

import com.loiclude.crud.model.Book;
import com.loiclude.crud.repository.BookRepository;
import com.loiclude.crud.service.book.beans.BookRequest;
import com.loiclude.crud.service.book.beans.BookResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BookService {
    @Autowired
    BookRepository bookRepository;

    @Autowired
    BookServiceMapper mapper;

    public List<BookResponse> getAll() {
        return mapper.convertListBook(bookRepository.findAll(Sort.by("name").descending()));
    }

    public BookResponse update(Book book, BookRequest bookRequest) {
        if(book != null) {
            mapper.merge(book, bookRequest);
            return mapper.convertBook(bookRepository.save(book));
        }
        return null;
    }

    public BookResponse save(BookRequest bookRequest) {
        Book book = new Book();
        mapper.merge(book, bookRequest);
        return mapper.convertBook(bookRepository.save(book));
    }

    public BookResponse show(Book book) {
        return mapper.convertBook(book);
    }

    public List<BookResponse> searchBooks(String name, Pageable pageable) {
        List<Book> books = bookRepository.findAllByName(name,pageable);
        return mapper.convertListBook(books);
    }

    public BookResponse delete(Book book) {
        bookRepository.delete(book);
        return mapper.convertBook(book);
    }
}
