package com.loiclude.crud.service.category;

import com.loiclude.crud.model.Category;
import com.loiclude.crud.service.category.beans.CategoryRequest;
import com.loiclude.crud.service.category.beans.CategoryResponse;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;

import java.util.List;

@Mapper(componentModel = "spring")
public interface CategoryServiceMapper {
    CategoryResponse convertCategory(Category category);

    List<CategoryResponse> convertListCategories(List<Category> categories);

    void merge(@MappingTarget Category category, CategoryRequest categoryRequest);
}
