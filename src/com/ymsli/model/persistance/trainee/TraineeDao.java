package com.ymsli.model.persistance.trainee;

import java.util.List;
import java.util.Optional;

public interface TraineeDao {
	public Trainee addTrainee(Trainee trainee);
	public List<Trainee> getAll();
}