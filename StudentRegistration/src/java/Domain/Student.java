/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Domain;


import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author ingabire
 */
@Entity
public class Student {
    @Id
    private int sid;
   private String fname; 
   private int sem;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public int getSem() {
        return sem;
    }

    public void setSem(int sem) {
        this.sem = sem;
    }

    @Override
    public String toString() {
        return "Student{" + "sid=" + sid + ", fname=" + fname + ", sem=" + sem + '}';
    }
  

}
