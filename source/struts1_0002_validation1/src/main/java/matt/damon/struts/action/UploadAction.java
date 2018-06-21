package matt.damon.struts.action;

import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import matt.damon.struts.form.UploadActionForm;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class UploadAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		UploadActionForm uaf = (UploadActionForm) form;

		String title = uaf.getTitle();
		int size = uaf.getMyFile().getFileSize();
		String name = uaf.getMyFile().getFileName();

		System.out
				.println("title:" + title + " size:" + size + " name:" + name);

		if (uaf.getMyFile() != null) {
			FileOutputStream fos = new FileOutputStream("f:\\"
					+ uaf.getMyFile().getFileName());

			fos.write(uaf.getMyFile().getFileData());
			fos.flush();
			fos.close();
		}
		return mapping.findForward("success");

	}

}
