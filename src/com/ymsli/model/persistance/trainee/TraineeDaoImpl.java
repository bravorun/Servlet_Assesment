package com.ymsli.model.persistance.trainee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ymsli.model.persistance.factory.ConnectionFactory;

public class TraineeDaoImpl implements TraineeDao {

	@Override
	public Trainee addTrainee(Trainee trainee) {
		Connection connection=ConnectionFactory.getConnection();
		try {
			PreparedStatement pstmt=connection.prepareStatement
					("insert into trainee (name,branch,percentage) value(?,?,?)",
							Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, trainee.getName());
			pstmt.setString(2, trainee.getBranch());
			pstmt.setDouble(3, trainee.getPercentage());
			pstmt.executeUpdate();
			ResultSet rs=pstmt.getGeneratedKeys();
			if(rs.next()) {
				trainee.setId(rs.getInt(1));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return trainee;
		
	}

	@Override
	public List<Trainee> getAll() {
		List<Trainee> trainees=new ArrayList<>();
		Trainee tempTrainee=null;
		Connection connection=ConnectionFactory.getConnection();
		try {
			PreparedStatement pstmt=connection.prepareStatement
					("select * from trainee");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				tempTrainee=new Trainee(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4));
				trainees.add(tempTrainee);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return trainees;
	}

}
