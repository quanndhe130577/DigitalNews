/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Digital;
import java.sql.Timestamp;
/*
    purpose : work with database
    author: quanndhe130577
    time : 03/2020
    */
public class DigitalDAO extends DBContext{
    // get one news with id from Database
     public Digital getNewsById(int id) throws Exception {
        try {
            String sql = "select * from digital where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Digital d = new Digital(rs.getInt("ID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getTimestamp("timePost"),
                        rs.getString("shortDes"));
                return d;
            }
        } catch (Exception e) {
            throw e;
        }
        return null;
    }

     // get top 6 news from database follows time
    public List<Digital> getTop6News() throws Exception {
        try {
            List<Digital> list = new ArrayList<>();
            String sql = "select top 6 * from digital\n"
                    + "order by timePost desc";
            Statement ps = connection.createStatement();
            ResultSet rs = ps.executeQuery(sql);
            while (rs.next()) {
                Digital d = new Digital(rs.getInt("ID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getTimestamp("timePost"),
                        rs.getString("shortDes"));
                list.add(d);
            }
            return list;
        } catch (Exception e) {
            throw e;
        }
    }

    //search news in database follows keywords
    public List<Digital> searchNewsByKeyWord(String txt, int currentPage, int pageSize) throws Exception {
        try {
            List<Digital> list = new ArrayList<>();
            String sql = "SELECT * FROM \n"
                    + "(\n"
                    + "SELECT ROW_NUMBER() OVER ( ORDER BY timePost DESC ) AS STT\n"
                    + "	  ,[ID]\n"
                    + "      ,[title]\n"
                    + "      ,[description]\n"
                    + "      ,[image]\n"
                    + "      ,[author]\n"
                    + "      ,[timePost]\n"
                    + "      ,[shortDes]\n"
                    + "  FROM [Digital].[dbo].[digital]\n"
                    + "  WHERE [digital].[title] like ?\n"
                    + " ) as X\n"
                    + " WHERE STT between ? and ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + txt + "%");
            ps.setInt(2, (currentPage-1)*pageSize+1);
            ps.setInt(3, pageSize*currentPage);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Digital d = new Digital(rs.getInt("ID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getTimestamp("timePost"),
                        rs.getString("shortDes"));
                list.add(d);
            }
            return list;
        } catch (Exception e) {
            throw e;
        }
    }

    // countNewsByKeyword the number of news in database followed keyword
    public int countNewsByKeyword(String txt) throws Exception {
        try {
            String query = "select count(*) from digital \n"
                    + "where title like ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, "%" + txt + "%");
            ResultSet rs = ps.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
            throw e;
        }
    }
}
