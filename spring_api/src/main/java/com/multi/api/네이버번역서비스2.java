package com.multi.api;

//네이버 Papago Text Translation API 예제
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONObject;

public class 네이버번역서비스2 {

	public String trans(String ko) {
		String clientId = "bxznsmgs4o";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "oZ9LuY4e09nwyWKQHJCOGsIEzMAwOOPqChwKRDc3";// 애플리케이션 클라이언트 시크릿값";
		String translatedText = "";
		try {
			String text = URLEncoder.encode(ko, "UTF-8");
			String apiURL = "https://naveropenapi.apigw.ntruss.com/nmt/v1/translation";
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
			con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
			// post request
			String postParams = "source=ko&target=en&text=" + text;
			con.setDoOutput(true);
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(postParams);
			wr.flush();
			wr.close();
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 오류 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer response = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}
			br.close();
			System.out.println(response.toString());
			JSONObject json = new JSONObject(response.toString());

			JSONObject message = json.getJSONObject("message");
			// System.out.println(message);
			JSONObject result = message.getJSONObject("result");
			translatedText = result.getString("translatedText");
			System.out.println(translatedText);
		} catch (Exception e) {
			System.out.println(e);
		}
		return translatedText;
	}
}