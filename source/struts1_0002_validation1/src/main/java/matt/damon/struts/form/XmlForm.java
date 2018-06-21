package matt.damon.struts.form;

import org.apache.struts.action.ActionForm;

public class XmlForm extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8592052095187029543L;
	private String name;
	private String password;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
