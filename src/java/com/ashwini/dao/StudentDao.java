/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/** @author ashwiniramachandra*/

package com.ashwini.dao;

import com.ashwini.model.Student;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


@Stateless
public class StudentDao implements StudentDaoLocal {
    @PersistenceContext
    private EntityManager em;
   
    
    @Override
    public void addStudent(Student student) {
    em.persist(student);
    
    }

    @Override
    public void editStudent(Student student) {
    em.merge(student);
    }

    @Override
    public void deleteStudent(int studentId) {
    em.remove(getStudent(studentId));
    }

    @Override
    public Student getStudent(int studentId) {
        return em.find(Student.class, studentId);
    }

    @Override
    public List<Student> getAllStudents() {
        return em.createNamedQuery("Student.getAll").getResultList();
    }
    
    
    
    
    
}
