/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Util.NewHibernateUtil;
import Domain.Student;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author ingabire
 */
public class StudentDao {
 public  String create(Student st){
     Session s=NewHibernateUtil.getSessionFactory().openSession();
     s.beginTransaction();
     s.save(st);
     s.getTransaction().commit();
     s.close();
     return "Student saved";
 }  
 
 public  String update(Student st){
     Session s=NewHibernateUtil.getSessionFactory().openSession();
     s.beginTransaction();
     s.update(st);
     s.getTransaction().commit();
    
     s.close();
     return "Student updated";
 }  
 public  String delete(Student st){
     Session s=NewHibernateUtil.getSessionFactory().openSession();
     s.beginTransaction();
     s.delete(st);
     s.getTransaction().commit();
     s.close();
     return "Student deleted";
 } 
 public Student findbyId(int id){
     Session s=NewHibernateUtil.getSessionFactory().openSession();
    Student st=(Student)s.get(Student.class,id);
    s.close();
    return st;
    
 }
 public List<Student> findAll(){
 Session s=NewHibernateUtil.getSessionFactory().openSession();
 Query q=s.createQuery("from Student");
 List<Student>li=q.list();
 s.close();
 return li;
 }
}
