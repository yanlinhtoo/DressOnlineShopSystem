package com.hostmdy.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class DressDAO {
	
	private DataSource dataSource;
	private Connection connection;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public DressDAO(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}
	
	public List<Dress> getDressList(){

		List<Dress> dressList = new ArrayList<>();
		try {
			connection = dataSource.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery("Select * from jean");
			
			while(rs.next()) {
				dressList.add(new Dress(
						rs.getInt("id"),
						rs.getString("code"),
						rs.getString("size"),
						rs.getString("color"),
						rs.getInt("price")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if(connection!=null)
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return dressList;
	}
	
	
	public Dress DressList(int id){
		Dress dress = null;
		try {
			connection = dataSource.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery("Select * from jean where id='"+id+"';");
			
			while(rs.next()) {
				dress = new Dress(
						rs.getInt("id"),
						rs.getString("code"),
						rs.getString("size"),
						rs.getString("color"),
						rs.getInt("price"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if(connection!=null)
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return dress;
	}
	
	public int updateDress(Dress dress) {
		int rowEffected = 0;
		try {
			connection = dataSource.getConnection();
			pstmt = connection.prepareStatement(
					"UPDATE `jean` SET "
					+ "`code` = ?,"
					+ "`size` = ?,"
					+ "`color`=?,"
					+ "`price` =? WHERE (`id` = ?);"
					);
			pstmt.setString(1,dress.getCode());
			pstmt.setString(2,dress.getSize());
			pstmt.setString(3,dress.getColor());
			pstmt.setInt(4,dress.getPrice());
			pstmt.setInt(5,dress.getId());
			
			rowEffected = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
				try {
					if(connection!=null)
						connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return rowEffected;
	}
	
	public int createDress(Dress dress) {
		int rowEffected = 0;
		try {
			connection = dataSource.getConnection();
			pstmt = connection.prepareStatement(
					"INSERT INTO `jean` "
					+ "(`code`,`size`,`color`,`price`) "
					+ "VALUES (?,?,?,?);"
					);
			pstmt.setString(1,dress.getCode());
			pstmt.setString(2,dress.getSize());
			pstmt.setString(3,dress.getColor());
			pstmt.setInt(4,dress.getPrice());
			
			rowEffected = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
				try {
					if(connection!=null)
						connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return rowEffected;
	}

	
	public int deleteDress(int id) {
		int rowEffected = 0;
		try {
			connection = dataSource.getConnection();
			pstmt = connection.prepareStatement("delete from jean where id=?;");
			pstmt.setInt(1, id);
			rowEffected = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if(connection!=null)
					connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return rowEffected;
		
	}
}

