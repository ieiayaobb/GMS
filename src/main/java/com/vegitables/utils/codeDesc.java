//package com.vegitables.utils;
//
//import java.io.Writer;
//
//import org.apache.struts2.components.Component;
//
//
//import com.opensymphony.xwork2.ActionContext;
//import com.opensymphony.xwork2.util.ValueStack;
//import com.vegitables.entity.Code;
//import com.vegitables.service.CommonService;
//
//public class codeDesc extends Component {
//	
//	private String codeId;
//	private String value;
//	CommonService commonService = ServiceFactory.commonService;
//
//	public String getCodeId() {
//		return codeId;
//	}
//
//	public void setCodeId(String codeId) {
//		this.codeId = codeId;
//	}
//
//	public String getValue() {
//		return value;
//	}
//
//	public void setValue(String value) {
//		this.value = value;
//	}
//
//	public codeDesc(ValueStack stack) {
//		super(stack);
//	}
//	
//	@Override
//	public boolean start(Writer arg0) {
//		 boolean results = super.start(arg0);
//		 //List<Code> codeList = commonService.findCodeList(type);
//		 //ActionContext.getContext().getValueStack().set(result, codeList);
//		 Code code = commonService.getCodeDesc(codeId,value);
//		 ActionContext.getContext().getValueStack().set("codeDesc", code.getCodeDesc());
//		 return results;
//	}
//
//}
