package Program;

import model.entities.Department;

import java.sql.ResultSet;

public class application {
    public static void main(String[] args) {

        Department obj = new Department(1, "Books");

        IO.println(obj);
    }
}
