package academy.prog;

import java.util.Objects;

public class User {
    private String name;
    private String lastname;
    private String age;
    private String color;
    private String country;

    public User(String name, String lastname, String age, String color, String country) {
        this.name = name;
        this.lastname = lastname;
        this.age = age;
        this.color = color;
        this.country = country;
    }

    public User() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(age, user.age) && Objects.equals(name, user.name) && Objects.equals(lastname, user.lastname) && Objects.equals(color, user.color) && Objects.equals(country, user.country);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, lastname, age, color, country);
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", lastname='" + lastname + '\'' +
                ", age=" + age +
                ", color='" + color + '\'' +
                ", country='" + country + '\'' +
                '}';
    }
}