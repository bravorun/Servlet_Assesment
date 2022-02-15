package com.ymsli.model.service;

import java.util.List;
import com.ymsli.model.persistance.trainee.Trainee;

public interface TraineeService {
	public Trainee addTrainee(Trainee trainee);
	public List<Trainee> getAll();
}
