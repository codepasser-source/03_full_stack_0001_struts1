package matt.damon.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import matt.damon.struts.form.XmlForm;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class XmlAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		XmlForm xml = (XmlForm) form;

		System.out.println(xml.getName());
		System.out.println(xml.getPassword());

		return mapping.findForward("success");
	}

}
