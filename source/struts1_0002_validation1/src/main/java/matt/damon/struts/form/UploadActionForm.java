package matt.damon.struts.form;

import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;

public class UploadActionForm extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = -55607457269175938L;
	private String title;
	private FormFile myFile;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public FormFile getMyFile() {
		return myFile;
	}

	public void setMyFile(FormFile myFile) {
		this.myFile = myFile;
	}

}
