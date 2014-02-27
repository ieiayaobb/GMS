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
//public class codeDescTag extends ComponentTagSupport{
//	
//	/**
//	 * 
//	 */
//	private static final long serialVersionUID = 1L;
//	private String codeId;
//	private String value;
//	
//	public String getCodeId() {
//		return codeId;
//	}
//	public void setCodeId(String codeId) {
//		this.codeId = codeId;
//	}
//	public String getValue() {
//		return value;
//	}
//	public void setValue(String value) {
//		this.value = value;
//	}
//	
//	@Override
//	public Component getBean(ValueStack arg0, HttpServletRequest arg1,
//			HttpServletResponse arg2) {
//		return new codeDesc(arg0);
//	}
//	
//    protected void populateParams() {
//        super.populateParams();
//        codeDesc codedesc = (codeDesc) component;
//        codedesc.setCodeId(codeId);
//        codedesc.setValue(value);
//        
//    }
//
//}
