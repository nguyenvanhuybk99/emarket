package session_bean;

import entity.Category;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class CategorySessionBean extends AbstractSessionBean<Category> {

	@PersistenceContext(unitName = "Lab8a")
	private EntityManager em;

	public EntityManager getEntityManager() {
		return em;
	}

	public CategorySessionBean() {
		super(Category.class);
	}
}