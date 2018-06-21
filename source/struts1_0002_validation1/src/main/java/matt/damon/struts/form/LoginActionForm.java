package matt.damon.struts.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class LoginActionForm extends ActionForm {

	private static final long serialVersionUID = 7551700224843878080L;

	private String userName;
	private String passWord;

	public LoginActionForm() {

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {

		System.out
				.println("----------------LoginActionForm.validate();---------------");

		System.out.println("userName=" + userName);
		if ("admin".equals(this.userName)) {

			return new ActionErrors();
		}
		return null;
	}

}
