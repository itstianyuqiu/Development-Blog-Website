package DAO;

import com.zaxxer.hikari.HikariDataSource;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class HikariConnectionPool {

    private static HikariDataSource hds;

    static {

        System.out.println("final commit 17/10");

        Properties dbProps = new Properties();
        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();

        // Loads a resource from the classpath. Can find files on:
        // /WEB-INF/lib, or
        // /WEB-INF/classes

        try (InputStream input = classLoader.getResourceAsStream("connection.properties")) {
            dbProps.load(input);
        } catch (IOException e) {
            e.printStackTrace();
        }

        hds = new HikariDataSource();
        hds.setJdbcUrl(dbProps.getProperty("url"));
        hds.setDriverClassName("com.mysql.jdbc.Driver");
        hds.setUsername(dbProps.getProperty("user"));
        hds.setPassword(dbProps.getProperty("password"));
        hds.setMaximumPoolSize(10);
    }

    public static Connection getConnection() throws SQLException {
        return hds.getConnection();
    }

}