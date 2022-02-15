package com.ymsli.model.service;

import java.util.List;

import com.ymsli.model.persistance.trainee.Trainee;
import com.ymsli.model.persistance.trainee.TraineeDao;
import com.ymsli.model.persistance.trainee.TraineeDaoImpl;

public class TraineeServiceImpl implements TraineeService{

	private TraineeDao traineeDao;
	public TraineeServiceImpl(){
		traineeDao=new TraineeDaoImpl();
	}
	

	@Override
	public Trainee addTrainee(Trainee trainee) {
		return traineeDao.addTrainee(trainee);
	}

	@Override
	public List<Trainee> getAll() {
		return traineeDao.getAll();
	}
	
	
	

}
