/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khoatd.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import khoatd.dto.AccountUserDto;
import khoatd.utils.DBUtils;

/**
 *
 * @author DANG KHOA
 */
public class LoginDao {
     private Connection con;
    private PreparedStatement stm;
    private ResultSet rs;

    private void closeConnection() throws SQLException {
        if (rs != null) {
            rs.close();
        }
        if (stm != null) {
            stm.close();
        }
        if (con != null) {
            con.close();
        }
    }

    public AccountUserDto checkLogin(String userID, String password) throws Exception {
        AccountUserDto user = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select username, fullname, nickname , isdelete from account_user  where username=? AND password=?";
                stm = con.prepareStatement(sql);
                stm.setString(1, userID);
                stm.setString(2, password);
                rs = stm.executeQuery();
                if (rs.next()) {
                    String username = rs.getString("username");
                    String fullname = rs.getString("fullname");
                    String nickname = rs.getString("nickname");
                    boolean isdelete = rs.getBoolean("isdelete");

                    user = new AccountUserDto(username,"", fullname, nickname, isdelete);
                }
            }
        } finally {
            closeConnection();
        }
        return user;
    }

}
