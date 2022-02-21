package com.acl.app.controller;

import com.acl.app.repository.DocumentRepository;
import com.acl.app.domain.Document;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class DocumentController {
  private final DocumentRepository repository;

  @GetMapping("/document")
  public List<Document> getAll() {
    return repository.findAll();
  }

  @GetMapping("/document/{id}")
  public Document getById(@PathVariable("id") Long id) {
    return repository.getById(id);
  }

  @PreAuthorize("hasPermission(#document, 'WRITE')")
  @PutMapping("/document/{id}")
  public Document edit(@PathVariable("id") Long id, @RequestBody Document document) {
    document.setId(id);
    return repository.save(document);
  }
}
