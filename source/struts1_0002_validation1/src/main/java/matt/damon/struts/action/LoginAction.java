package matt.damon.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import matt.damon.struts.exception.PasswordErrorException;
import matt.damon.struts.exception.UserNotFindException;
import matt.damon.struts.form.LoginActionForm;
import matt.damon.struts.manager.UserManager;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class LoginAction extends Action {

	private Log Logger = LogFactory.getLog(LoginAction.class);

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String errorInfo = null;

		try {
			System.out.println("---------LoginAction.execute();----------");
			LoginActionForm user = (LoginActionForm) form;

			UserManager.getInstance().login(user.getUserName(),
					user.getPassWord());

			return mapping.findForward("success");

		} catch (UserNotFindException e) {
			errorInfo = "没有该用户";

		} catch (PasswordErrorException e) {
			errorInfo = "密码错误";
		}
		request.setAttribute("errorInfo", errorInfo);
		return mapping.findForward("error");

	}

}
