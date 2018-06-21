package matt.damon.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

public class DynaAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		DynaActionForm daf = (DynaActionForm) form;

		String userName = (String) daf.get("userName");
		Integer age = (Integer) daf.get("age");

		System.out.println("----username---" + userName + "----age----" + age);

		return mapping.findForward("success");
	}

}
