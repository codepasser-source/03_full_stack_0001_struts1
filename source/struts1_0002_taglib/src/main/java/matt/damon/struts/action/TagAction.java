package matt.damon.struts.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import matt.damon.struts.form.Group;
import matt.damon.struts.form.User;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class TagAction extends Action {

	private static final Log LOGGER = LogFactory.getLog(TagAction.class);

	private static final String PARAM_KEY = "param";

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String issue = request.getParameter(PARAM_KEY);

		LOGGER.info(issue);

		switch (issue) {
		case "bean":
			// text
			request.setAttribute("text", "hello,this is bean write tag！");
			// html text
			request.setAttribute("html-text", "<font color='red'>北京欢迎你</font>");
			// date
			request.setAttribute("date", new Date());
			// number
			request.setAttribute("num", 123456.789);
			// Object
			Group group = new Group();
			group.setName("gourp1");
			User user = new User();
			user.setUserName("张三");
			user.setGroup(group);
			request.setAttribute("user", user);
			return mapping.findForward("bean");

		case "logic":
			request.setAttribute("attr1", "");
			ArrayList<User> list = new ArrayList<User>();

			group = new Group();
			group.setName("gourp1");

			User user1 = new User();
			user1.setUserName("张三");
			user1.setGroup(group);

			User user2 = new User();
			user2.setUserName("张三1");
			user2.setGroup(group);

			User user3 = new User();
			user3.setUserName("张三2");
			user3.setGroup(group);

			list.add(user1);
			list.add(user2);
			list.add(user3);
			request.setAttribute("userlist", list);

			return mapping.findForward("logic");

		case "el":
			// 输出text
			request.setAttribute("hello", "hello this is el");

			group = new Group();
			group.setName("gourp1");

			// 输出结构
			user = new User();
			user.setUserName("张三");
			user.setGroup(group);
			request.setAttribute("user", user);

			// map
			Map<String, String> map = new HashMap<String, String>();
			map.put("key1", "value1");
			map.put("key2", "value2");
			map.put("key3", "value3");
			request.setAttribute("map", map);

			// array
			int array[] = { 0, 1, 2 };
			request.setAttribute("array", array);

			// 对象数组
			User[] users = { user, user };
			request.setAttribute("users", users);
			return mapping.findForward("el");

		default:
			return mapping.findForward("success");
		}

	}
}
