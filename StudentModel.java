package com.aid.demo;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "alexdata")
public class StudentModel{
    @Id
    @GeneratedValue
    int sno;
    String name;
    void setsno(int sn){
        this.sno=sn;
    }
    void setname(String n){
        this.name=n;
    }
    
    int getsno(){
        return sno;
    }
    String getname(){
        return name;
    }


}