package matt.damon.struts.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ChangEncoding implements Filter {

	private Log Logger = LogFactory.getLog(ChangEncoding.class);

	private static String encoding;

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain fc)
			throws IOException, ServletException {
		req.setCharacterEncoding(encoding);
		res.setCharacterEncoding(encoding);

		fc.doFilter(req, res);
	}

	public void init(FilterConfig fc) throws ServletException {
		Logger.info("----------ChangEncoding init(FilterConfig fc)-------------");

		encoding = fc.getInitParameter("encoding");

	}

}
