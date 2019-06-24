package cn.com.mrzheng.web.entity;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain=true)
public class User {
    String userName;
    Integer age;
    String adress;

    @Override
    public String toString() {
        return "User{" +
                "userName='" + userName + '\'' +
                ", age=" + age +
                ", adress='" + adress + '\'' +
                '}';
    }

}
