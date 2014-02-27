//package com.vegitables.utils;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.apache.struts2.components.Component;
//import org.apache.struts2.views.jsp.ComponentTagSupport;
//
//import com.opensymphony.xwork2.util.ValueStack;
//
//public class codeTypeTag extends ComponentTagSupport {
//
//	private static final long serialVersionUID = 1L;
//	
//	private String type;
//	private String result;
//	
//	public String getType() {
//		return type;
//	}
//
//	public void setType(String type) {
//		this.type = type;
//	}
//
//	public String getResult() {
//		return result;
//	}
//
//	public void setResult(String result) {
//		this.result = result;
//	}
//
//	@Override
//	public Component getBean(ValueStack arg0, HttpServletRequest arg1,
//			HttpServletResponse arg2) {
//		return new codeType(arg0);
//	}
//	
//    protected void populateParams() {
//        super.populateParams();
//        codeType codetype = (codeType) component;
//        codetype.setType(type);
//        codetype.setResult(result);
//        
//    }
//
//
//}
