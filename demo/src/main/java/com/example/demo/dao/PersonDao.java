package com.example.demo.dao;
import com.example.demo.model.Person;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.UUID;

@Mapper
public interface PersonDao {
    @Insert("insert into register_test values (#{userId},#{userName},#{password},#{email},1,0)")
    //@Insert("insert into register_test values (\"111\",\"rawUser\",\"helloWorld\",\"myEmail@mails.com\")")
    int insert(int userId,String userName,String password,String email);

    @Select("SELECT MAX(userId) FROM register_test")
    int getNewUserId();

    @Select("select * from register_test where userName=#{userName}")
    Person select(String userName);

    @Select("select userName,email,Lv,crystal from register_test where userId=#{userId}")
    String fetchUserInfo(int userId);

    /*
    int insertPerson(UUID id,Person person);

    default int insertPerson(Person person){
        UUID id = UUID.randomUUID();
        return insertPerson(id,person);
    }



        Optional<Person> selectPersonById (UUID id);

        int deletePersonById (UUID id);

        int updatePersonById (UUID id, Person person);
*/

}