package com.todo.pro.TODOApplicationProject;

import org.springframework.data.repository.CrudRepository;

public interface TodoRepository extends CrudRepository<Todos, Integer> {

}
