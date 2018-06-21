package matt.damon.struts.manager;

import matt.damon.struts.exception.PasswordErrorException;
import matt.damon.struts.exception.UserNotFindException;

public class UserManager {

	private static UserManager userManager = new UserManager();

	private UserManager() {

	}

	public static UserManager getInstance() {

		return userManager;

	}

	public void login(String userName, String passWord) {

		if (!"admin".equals(userName)) {
			throw new UserNotFindException();
		} else if (!"admin".equals(passWord)) {
			throw new PasswordErrorException();

		}

	}
}
