//package com.vegitables.utils;
//
//import java.io.Writer;
//import java.util.List;
//
//import org.apache.struts2.components.Component;
//
//
//import com.opensymphony.xwork2.ActionContext;
//import com.opensymphony.xwork2.util.ValueStack;
//import com.vegitables.entity.Code;
//import com.vegitables.service.CommonService;
//
//public class codeType extends Component {
//	
//	private String type;
//	private String result;
//	CommonService commonService = ServiceFactory.commonService;
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
//	public codeType(ValueStack stack) {
//		super(stack);
//	}
//	
//	@Override
//	public boolean start(Writer arg0) {
//		 boolean results = super.start(arg0);
//		 List<Code> codeList = commonService.findCodeList(type);
//		 ActionContext.getContext().getValueStack().set(result, codeList);
//		 return results;
//	}
//
//}
