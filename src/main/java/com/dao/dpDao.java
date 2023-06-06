package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.dp;


public class dpDao extends BaseDao{
    public ArrayList<dp> dpinf() {//���ز�����Ϣ�б�
        ArrayList<dp> dpList = new ArrayList<dp>();
        String sql = "select * from dptable";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rst = pstmt.executeQuery()) {
            while(rst.next())
            {
                dp dp0=new dp();
                dp0.setDpcode(rst.getString("dpcode"));
                dp0.setDpname(rst.getString("dpname"));
//                dp0.setNum(rst.getInt("num"));
                dp0.setWage(rst.getDouble("dpleastwage"));
                dpList.add(dp0);
            }
            return dpList;
        } catch (SQLException se) {
            se.printStackTrace();
            return null;
        }
    }
    public dp searchDp(String dpcode,ArrayList<dp> dplist){

        for (dp d : dplist) {
            System.out.println(d.getDpcode()+"..."+dpcode);
            if ((d.getDpcode()).equals(dpcode)) {
                System.out.println("find it/////////");
                return d;
            }
        }
        return null;
    }
    public boolean deleteDp(String dpcode) {//���ݲ��ű��ɾ��������Ϣ
        String sql = "delete from dptable where dpcode= ? ";
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, dpcode);
            pstmt.executeUpdate();
            return true;
        } catch (SQLException se) {
            se.printStackTrace();
            return false;
        }
    }
    public boolean updateDp(String dpcode,String dpname,String dpwage) {//���ݲ��ű�Ÿ��²�����Ϣ
        String sql = "update dptable set dpname=? ,dpLeastwage=? where dpcode= ? ";
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, dpname);
            pstmt.setDouble(2, Double.parseDouble(dpwage));
            pstmt.setString(3, dpcode);
            pstmt.executeUpdate();
            return true;
        } catch (SQLException se) {
            se.printStackTrace();
            return false;
        }
    }
    public boolean finddpcode(String dpcode){
        String sql="select dpcode from dptable where dpcode=?";
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, dpcode);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next())
            {
                System.out.println(dpcode);
                return true;
            }
            System.out.println("!find dpcode!");
            return false;
        } catch (SQLException se) {
            se.printStackTrace();
            return false;
        }
    }
}
