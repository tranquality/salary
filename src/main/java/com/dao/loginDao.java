package com.dao;

import com.dao.BaseDao;
import java.sql.*;
import java.util.ArrayList;

public class loginDao extends BaseDao{
    public String login(String account,String password) {
        String sql = "select * from admin where account='"+account+"'";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rst = pstmt.executeQuery()) {
            System.out.println("�����ˡ�");
            if(rst.next())
            {
                System.out.println(rst.getString("password"));

                if(rst.getString("password").equals(password))
                {
                    if("admin".equals(rst.getString("type")))
                        return "amdin";
                    else
                        return "superadmin";
                }

                else return "�û������������";
            }
            else return "�û���������";
        } catch (Exception se) {
            se.printStackTrace();
            return "��֤ʧ��1";
        }
    }
}
