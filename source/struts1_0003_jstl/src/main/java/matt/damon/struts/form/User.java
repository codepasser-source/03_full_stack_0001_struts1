package matt.damon.struts.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessages;

public class User extends ActionForm {

	private Log Logger = LogFactory.getLog(User.class);

	private static final long serialVersionUID = 7551700224843878080L;

	private String userName;
	private String passWord;

	private Group group;

	public User() {

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

	public Group getGroup() {
		return group;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {

		Logger.info("----------------LoginActionForm.validate();---------------");
		ActionErrors actionErrs = null;
		if ("admin".equals(this.userName)) {
			actionErrs = new ActionErrors();
			actionErrs.add(new ActionMessages());
		}
		return actionErrs;
	}
}
