package com.loiclude.crud.controller;

import com.loiclude.crud.common.BaseResponse;
import com.loiclude.crud.model.Book;
import com.loiclude.crud.service.book.BookService;
import com.loiclude.crud.service.book.beans.BookRequest;
import com.loiclude.crud.service.book.beans.BookResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.List;

@RestController
@RequestMapping("/book")
public class BookController {

    @Autowired
    BookService bookService;

    @GetMapping
    public BaseResponse<List<BookResponse>> list() {
        return new BaseResponse<List<BookResponse>>(bookService.getAll());
    }

    @PutMapping("{id}")
    public BaseResponse<BookResponse> update(@PathVariable("id") Book book, @RequestBody @Valid BookRequest bookRequest) {
        return new BaseResponse<BookResponse>(bookService.update(book, bookRequest));
    }

    @PostMapping
    public BaseResponse<BookResponse> save(@RequestBody BookRequest bookRequest) {
        return new BaseResponse<BookResponse>(bookService.save(bookRequest));
    }

    @GetMapping("{id}")
    public BaseResponse<BookResponse> getDetail(@PathVariable("id") Book book) {
        return new BaseResponse<BookResponse>(bookService.show(book));
    }

    @GetMapping("/search")
    public BaseResponse<List<BookResponse>> search(@RequestParam(value = "name") String name,
                                                   @RequestParam("page") Integer page,
                                                   @RequestParam("size") Integer size) {
        return new BaseResponse<List<BookResponse>>(bookService.searchBooks(name, PageRequest.of(page, size)));
    }

    @DeleteMapping("{id}")
    public BaseResponse<BookResponse> delete(@PathVariable("id") Book book) {
        return new BaseResponse<BookResponse>(bookService.delete(book));
    }
}
