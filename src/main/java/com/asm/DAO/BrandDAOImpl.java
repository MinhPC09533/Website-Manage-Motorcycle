package com.asm.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.asm.model.Brand;
import com.asm.until.jdbc;

public class BrandDAOImpl implements BrandDAO {

    @Override
    public List<Brand> findAll() {
        List<Brand> brands = new ArrayList<>();
        String sql = "SELECT * FROM Brands";
        
        try (Connection conn = jdbc.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Brand brand = new Brand(
                    rs.getInt("brand_id"),
                    rs.getString("name")
                );
                brands.add(brand);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving brands", e);
        }
        
        return brands;
    }
    @Override
	public Brand findById(int id) { // ✅ Đổi từ String thành int
        String sql = "SELECT * FROM Brands WHERE brand_id = ?";
        try (Connection conn = jdbc.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id); // ✅ Sử dụng setInt thay vì setString
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new Brand(
                        rs.getInt("brand_id"), // ✅ Đảm bảo lấy đúng cột
                        rs.getString("name")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
	public void create(Brand item) {
        String sql = "INSERT INTO Brands ( name) VALUES ( ?)";
        try (Connection conn = jdbc.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
         
            stmt.setString(1, item.getName());
          
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    @Override
    public void update(Brand item) {
        String sql = "UPDATE Brands SET name = ? WHERE Brand_id = ?";
        try (Connection conn = jdbc.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, item.getName());
          
            stmt.setInt(2, item.getBrand_id());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    @Override
	public void deleteById(int id) {
        String sql = "DELETE FROM Brands WHERE brand_id = ?";
        try (Connection conn = jdbc.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
