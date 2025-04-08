package util;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import entity.MappingClass;

public class Validate {

    public boolean saveTask(String t) {
        Transaction transaction = null;
        boolean isValid=false;
        

        try {
             Session session = SessionFac.getSessionFactory().openSession();

            transaction = session.beginTransaction();

            MappingClass mc = new MappingClass();
            mc.setTask(t);

            session.save(mc);
            transaction.commit(); 
            isValid=true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback(); 
            }
            e.printStackTrace();
           
        }
        return isValid;
    }
    public List<MappingClass> showTask() {
    	Transaction t=null;
    List<MappingClass> mc=null;
    try {
    Session s=SessionFac.getSessionFactory().openSession();
    t=s.beginTransaction();
    
    mc=(List<MappingClass>)s.createQuery("from MappingClass",MappingClass.class).list();
    	t.commit();
    	return mc;
    }
    catch(Exception e) {
    	System.out.print("failed"+e);
    	if (t != null)
    		t.rollback(); 
    
    }
	return null;
}public int deleteTask(int t) {
    Transaction transaction = null;
    int deletedRows = 0;

    try (Session session = SessionFac.getSessionFactory().openSession()) {  
        transaction = session.beginTransaction();

        // Correct way to execute delete query
        Query query = session.createQuery("DELETE FROM MappingClass WHERE id = :id");
        query.setParameter("id", t);
        deletedRows = query.executeUpdate(); // Executes the delete operation

        transaction.commit();
    } catch (Exception e) {
        if (transaction != null) {
            transaction.rollback();
        }
        e.printStackTrace();
    }
    return deletedRows; // Returns number of deleted rows
}

}



