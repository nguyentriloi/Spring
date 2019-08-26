package com.loiclude.crud.service.book;

import com.loiclude.crud.model.Book;
import com.loiclude.crud.service.book.beans.BookRequest;
import com.loiclude.crud.service.book.beans.BookResponse;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.WARN)
public interface BookServiceMapper {
    BookResponse convertBook(Book book);

    List<BookResponse> convertListBook(List<Book> books);

    void merge(@MappingTarget Book book, BookRequest bookRequest);
}
