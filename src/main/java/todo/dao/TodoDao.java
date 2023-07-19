package todo.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import todo.dto.Task;
import todo.dto.UserInfo;

@Component
public class TodoDao {

	@Autowired
	EntityManager manager;

	public void save(UserInfo userInfo) {
		manager.getTransaction().begin();
		manager.persist(userInfo);
		manager.getTransaction().commit();
	}

	public void save(Task task) {
		manager.getTransaction().begin();
		manager.persist(task);
		manager.getTransaction().commit();
	}

	public UserInfo findByEmail(String email) {
		List<UserInfo> list = manager.createQuery("select x from UserInfo x where email=?1").setParameter(1, email)
				.getResultList();
		if (list.isEmpty())
			return null;
		else
			return list.get(0);
	}

	public Task findById(int id)
	{
		
	  return  manager.find(Task.class, id);
	
	}

	public void update(Task task) {
		manager.getTransaction().begin();
		manager.merge(task);
		manager.getTransaction().commit();
		
	}

	public void Delete(Task task) {
		// TODO Auto-generated method stub
		manager.getTransaction().begin();
		manager.remove(task);
		manager.getTransaction().commit();
	}

	public void update(UserInfo info) {
		// TODO Auto-generated method stub
		manager.getTransaction().begin();
		manager.merge(info);
		manager.getTransaction().commit();
	}

}