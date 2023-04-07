package programs;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

@Component
public class Operations {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("dev");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public void insert(Emplyoee emplyoee) {
		entityTransaction.begin();
		entityManager.persist(emplyoee);
		entityTransaction.commit();
	}

	public void delete(int id) {
		Emplyoee data = entityManager.find(Emplyoee.class, id);
		entityTransaction.begin();
		entityManager.remove(data);
		entityTransaction.commit();
	}

	public List<Emplyoee> fetchAll() {
		Query query = entityManager.createQuery("select data from Emplyoee data");
		List<Emplyoee> emp = query.getResultList();
		return emp;
	}

	public Emplyoee fetchById(int id) {
		Emplyoee emp = entityManager.find(Emplyoee.class, id);
		return emp;
	}

	public void updateMail(int id, String email) {
		Emplyoee data = entityManager.find(Emplyoee.class, id);
		data.setEmail(email);
		entityTransaction.begin();
		entityManager.merge(data);
		entityTransaction.commit();
	}
}

