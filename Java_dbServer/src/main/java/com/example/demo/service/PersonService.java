package com.example.demo.service;

import com.example.demo.dao.PersonDao;
import com.example.demo.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class PersonService {
    @Autowired
    private PersonDao personDao;

    public String fetchUserInfo(int userId) {
        return personDao.fetchUserInfo(userId);
    }



    public int insert(String userName,String password,String email){
        int userId=personDao.getNewUserId()+1;
        return personDao.insert(userId,userName,password,email);
    }

    public int loginCheck(String userName, String password){
        Person person=personDao.select(userName);
        System.out.println(person.getPassword());
        System.out.println(password);
        System.out.println(person.getPassword().equals(password.toString()));
        if (person.getPassword().equals(password.toString())){
            int userId=person.getId();
            System.out.println(userId);
            return userId;
        }
        else return -1;
    }

    //public List<Person> select(){
    //    return personDao.select();
    //}

    /*
    private final PersonDao personDao;

    @Autowired
    public PersonService(@Qualifier("fakeDao") PersonDao personDao) {

        this.personDao = personDao;
    }

    public int addPerson(Person person){
        return personDao.insertPerson(person);
    }

    public List<Person> getAllPeople(){
        return personDao.selectAllPeople();
    }

    public Optional<Person> getPersonById(UUID id){
        return personDao.selectPersonById(id);

    }

    public int deletePerson(UUID id){
        return personDao.deletePersonById(id);
    }

    public int updatePerson(UUID id,Person newPerson){
        return personDao.updatePersonById(id,newPerson);
    }
    */
}
