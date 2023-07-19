package todo.helper;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MyWebXml extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class[] a = { MyConfiguration.class };
		return a;
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		String a[] = { "/" };
		return a;
	}

}
