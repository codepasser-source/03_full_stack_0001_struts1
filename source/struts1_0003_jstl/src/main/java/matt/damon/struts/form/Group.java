package matt.damon.struts.form;

import org.apache.struts.action.ActionForm;

public class Group extends ActionForm {

	private static final long serialVersionUID = -7957201088667889331L;

	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
