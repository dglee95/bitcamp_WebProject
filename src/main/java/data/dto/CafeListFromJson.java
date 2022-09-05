package data.dto;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class CafeListFromJson {
	public static void main(String[] args) {
		/**
		 *  REST API 호출하기
		 *  Simple jar 
		 */
		String apiURL = "https://api.odcloud.kr/api/15066516/v1/uddi:507e01f5-76ec-42ff-96a5-8b6ff9ce554e?page=1&perPage=1000&serviceKey=tugxqumV1Wo%2BBUCKpVWbdb8w2j02H09Hh%2FhmVwjEuxDvfyjiXAPYOCSPMqA6242g5WWAbmCMAqTLiGJ02qFODA%3D%3D";
		URL url = null;
		HttpURLConnection con= null;
		Object obj = null;
		JSONObject result = null;
		StringBuilder sb = new StringBuilder();
		
		try {
			// URL 객채 생성
			url = new URL(apiURL);
			// URL을 참조하는 객체를 URLConnection 객체로 변환
			con = (HttpURLConnection) url.openConnection();
			// 커넥션 request 방식 "GET"으로 설정
			con.setRequestMethod("GET");
			// 커넥션 request 값 설정(key,value) 
			con.setRequestProperty("Content-type", "application/json");
			// 받아온 JSON 데이터 출력 가능 상태로 변경 (default : false)
			con.setDoOutput(true);
			// URLConnection 객체를 읽어 데이터 입력 스트림에 담기
			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
			//입력스트림이 사용할 준비가 되어있는지 확인해서 true일 동안 반복.
			while(br.ready()) {
			//입력스트림에 있는 데이터를 lin별로 읽어 StringBuilder객체에 저장.
				sb.append(br.readLine());
			}
			//HttpURLConnection 클래스를 통해 연결되어 있는 것을 끊을 때 두가지 방법
			//close()를 사용해서 연결을 종료시킨 경우, 다시 연결할려면 openConnection() 을 다시 해줘야한다.
			//disconnect()는 connect() 메소드만 호출하면 바로 다시 복구
			con.disconnect();
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		JSONParser parser = new JSONParser();
		try {
			/*obj = (JSONObject) parser.parse(sb.toString()); jar파일 필요*/
			result = (JSONObject) obj;
			
			JSONArray data = (JSONArray)result.get("data");
			
			for(int i = 0; i<data.size(); i++) {
				JSONObject jsonObject = (JSONObject)data.get(i);
				System.out.println("업소명 : "+jsonObject.get("업소명"));
				System.out.println("가게소개 : "+jsonObject.get("사장님이자랑하는내가게한마디"));
				System.out.println("주소1 : "+jsonObject.get("주소1"));
				System.out.println("주소2 : "+jsonObject.get("주소2"));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}	
}
