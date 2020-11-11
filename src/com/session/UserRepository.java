package com.session;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {
	
	//DB가정
	private static List<User> userlist = new ArrayList<>();

	public static List<User> getUserlist() {
		return userlist;
	}

	public static void setUserlist(User user) {
		userlist.add(user); 
	}
	
	public static User getUser(String id) {		
		for(int i = 0; i < userlist.size(); i++) {
			if(userlist.get(i).getId().equals(id)) {				
				return userlist.get(i);
			}
		}
		return null;			
	}
	
	public static void delUser(String id) {
		userlist.remove(getUser(id)); //메서드 재활용
	}
	
	
}
