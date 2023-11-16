<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.mysql.cj.xdevapi.JsonArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	JSONObject json = new JSONObject();
	json.put("id", "root");
	// Map --> HashMap  ==> put(key, value)
	json.put("pw", "1234");
	json.put("tel", "011");
	
	JSONObject json2 = new JSONObject();
	json2.put("id", "root2");
	json2.put("pw", "2468");
	json2.put("tel", "022");
	
	JSONArray array = new JSONArray();
	array.add(json);
	// list --> 순서  ==> ArrayList, LinkedList add(data)
	array.add(json2);
	
	out.print(array.toJSONString()); // {id : root, pw : 1234, tel : 011}
%>