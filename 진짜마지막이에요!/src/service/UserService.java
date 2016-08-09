package service;

import java.sql.Connection;

import dao.UserDAO;

public class UserService {

	
	public boolean login(String id,String pw){
		boolean result = false;
		Connection con = common.DBTemplate.getConnection();
		
		UserDAO dao = new UserDAO(con);
		result = dao.select(id, pw);
		try {
			
			if(result){
				con.commit();
			}else{
				con.rollback();
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return result;
	}
	
	
}
