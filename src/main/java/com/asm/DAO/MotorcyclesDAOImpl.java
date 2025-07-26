package com.asm.DAO;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.asm.model.Motorcycles;
import com.asm.until.jdbc;

public class MotorcyclesDAOImpl implements MotorcyclesDAO{

	  @Override
	    public List<Motorcycles> findAll() {
	        List<Motorcycles> motorcycles = new ArrayList<>();
	        String sql = "SELECT * FROM Motorcycles";
	        
	        try (Connection conn = jdbc.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(sql);
	             ResultSet rs = stmt.executeQuery()) {

	            while (rs.next()) {
	            	Motorcycles motorcycle = new Motorcycles(
	                    rs.getInt("motorcycle_id"),
	                    rs.getString("name"),
	                    rs.getInt("price"),
	                    rs.getInt("stock_quantity"),
	                    rs.getString("description"),
	                    rs.getString("image_url")
	                );
	            	motorcycles.add(motorcycle);
	            }
	        } catch (SQLException e) {
	            throw new RuntimeException("Error retrieving ", e);
	        }
	        
	        return motorcycles;
	    }
	  
	  @Override
	public Motorcycles findById(int id) { // ✅ Đổi từ String thành int
	        String sql = "SELECT * FROM Motorcycles WHERE motorcycle_id = ?";
	        try (Connection conn = jdbc.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(sql)) {
	            stmt.setInt(1, id); // ✅ Sử dụng setInt thay vì setString
	            try (ResultSet rs = stmt.executeQuery()) {
	                if (rs.next()) {
	                    return new Motorcycles(
	                    		  rs.getInt("motorcycle_id"),
	      	                    rs.getString("name"),
	      	                    rs.getInt("price"),
	      	                    rs.getInt("stock_quantity"),
	      	                    rs.getString("description"),
	      	                    rs.getString("image_url")
	      	                );
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return null;
	    }
	
	  @Override
	
	  public void create(Motorcycles item) {
	      String sql = "INSERT INTO motorcycles (name, price, stock_quantity, description, image_url) VALUES (?, ?, ?, ?, ?)";
	      try (Connection conn = jdbc.getConnection();
	           PreparedStatement stmt = conn.prepareStatement(sql)) {

	          stmt.setString(1, item.getName());
	          stmt.setBigDecimal(2, BigDecimal.valueOf(item.getPrice())); // Sử dụng BigDecimal cho DECIMAL
	          stmt.setInt(3, item.getStock_quantity());
	          stmt.setString(4, item.getDescription());
	          stmt.setString(5, item.getImage_url());

	          int rowsInserted = stmt.executeUpdate();
	          if (rowsInserted > 0) {
	              System.out.println("A new motorcycle was inserted successfully!");
	          } else {
	              System.out.println("No rows were inserted.");
	          }
	      } catch (SQLException e) {
	          System.err.println("SQL Error: " + e.getMessage());
	          e.printStackTrace();
	      }
	  }

	  @Override
	public void update(Motorcycles item) {
	        String sql = "UPDATE Motorcycles SET name = ?,price=?,stock_quantity=?,description=?,image_url=? WHERE motorcycle_id = ?";
	        try (Connection conn = jdbc.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(sql)) {
	            stmt.setString(1, item.getName());
	            stmt.setInt(2, item.getPrice());
	            stmt.setInt(3, item.getStock_quantity());
	            stmt.setString(4, item.getDescription());
	            stmt.setString(5, item.getImage_url());
	            stmt.setInt(6, item.getMotorcycle_id());
	            stmt.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	  @Override
	public void deleteById(int id) {
	        String sql = "DELETE FROM Motorcycles WHERE Motorcycle_id = ?";
	        try (Connection conn = jdbc.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(sql)) {
	            stmt.setInt(1, id);
	            stmt.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	

	  
}
