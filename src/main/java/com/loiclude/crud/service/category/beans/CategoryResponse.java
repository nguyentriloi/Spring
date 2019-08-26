package com.loiclude.crud.service.category.beans;

import com.loiclude.crud.service.book.beans.BookResponse;

import java.util.List;

public class CategoryResponse extends CategoryRequest{
    private Integer id;

    private Integer countBook;

    private List<BookResponse> bookResponses;

    public Integer getCountBook() {
        return countBook;
    }

    public void setCountBook(Integer countBook) {
        this.countBook = countBook;
    }

    public List<BookResponse> getBookResponses() {
        return bookResponses;
    }

    public void setBookResponses(List<BookResponse> bookResponses) {
        this.bookResponses = bookResponses;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
