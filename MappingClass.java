package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class MappingClass {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY) 
	 private int id;
	private String task;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTask() {
		return task;
	}
	public void setTask(String task) {
		this.task = task;
	}
	@Override
    public String toString() {
        return "Task{id=" + id + " task='" + task + "'}";
    }

}
