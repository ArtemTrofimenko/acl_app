package com.acl.app.repository;

import com.acl.app.domain.Document;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PostFilter;

import java.util.List;

public interface DocumentRepository extends JpaRepository<Document, Long> {
  @PostFilter("hasPermission(filterObject, 'READ')")
  List<Document> findAll();

  @PostAuthorize("hasPermission(returnObject, 'READ')")
  Document getById(Long id);

  Document save(@Param("document") Document document);
}
