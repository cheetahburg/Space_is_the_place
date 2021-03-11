package com.example.demo.model;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.lang.NonNull;

import java.util.UUID;

public class Person {
    private final int id;

    private final String name;
    private final String password;
    private final String email;

    private final int Lv;
    private final int crystal;

    public Person(@JsonProperty("id") int id,
                  @JsonProperty("name") String name,
                  @JsonProperty("password") String password,
                  @JsonProperty("email") String email
    ) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.Lv=1;
        this.crystal=0;
    }

    public int getId() {return id;}
    public String getName() {
        return name;
    }
    public String getPassword() {
        return password;
    }
    public String getEmail() {
        return email;
    }

    public int getLv() {
        return Lv;
    }

    public int getCrystal() {
        return crystal;
    }
}
