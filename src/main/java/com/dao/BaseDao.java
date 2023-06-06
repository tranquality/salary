package com.dao;
import java.sql.*;
import javax.sql.DataSource;
import javax.naming.*;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class BaseDao {
    DataSource dataSource;
    public BaseDao () {
        try {
            Context context = new InitialContext();
            dataSource =
                    (DataSource)context.lookup("java:comp/env/jdbc/sampleDS");
        }catch(NamingException ne){
            System.out.println("Exception:"+ne);
        }



    }
    public Connection getConnection()throws Exception{
        System.out.println("BaseDao连接成功。");
        return dataSource.getConnection();
    }
}