package com.song.util;
import java.sql.*;

public final class ConnectionUtil
{
    private static String url = "jdbc:mysql://<your MySQL server IP>:3306/bbs?characterEncoding=UTF-8";
    private static String user = "<your MySQL server username>";
    private static String password = "<your MySQL server password>";

    public ConnectionUtil() {}

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("找不到驱动程序类，加载驱动失败。");
            e.printStackTrace();
        }
    }
    public static Connection getConnection ()
    {
        try {
            return DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            System.out.println("创建数据库连接失败。");
            e.printStackTrace();
        }
        return null;
    }
    public static void release (ResultSet resultSet, Statement statement, Connection connection)
    {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (connection != null) {
                        connection.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
