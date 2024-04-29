package com.project.accountbook.util;

public class OutputUtil {
	
	public static String redirect(String message) {
		
		StringBuilder builder = new StringBuilder();
		
		builder.append("<html>");
		builder.append("<head>");
		builder.append("<meta charset='UTF-8'>");
		builder.append("</head>");
		builder.append("<body>");
		builder.append("<script>");
		builder.append("alert('" + message + "');");
		builder.append("history.back();");
		builder.append("</script>");
		builder.append("</body>");
		builder.append("</html>");
		
		return builder.toString();
		
	}

}
