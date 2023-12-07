package com.multi.mongo;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class Mongo2_insertMany {

	public static void main(String[] args) {
		try {
			//1.mongoDB연결할 수 있는 클라이언트 객체 생성 
			MongoClient client = new MongoClient("localhost", 27017);
			System.out.println("1. mongoserver연결");
			
			//2.db에 연결 
			MongoDatabase database = client.getDatabase("shop2");
			System.out.println("2. shop2 mongodb연결");
			
			//3.memo 컬렉션에 연결 
			MongoCollection<Document> collection = database.getCollection("memo");
			System.out.println("3. memo 컬렉션에 연결");
			
			//4.insert할 document객체 생성 
			Document doc = new Document(); //JSON {id: "apple", pw: "apple", .....}
			doc.append("id", "apple");
			doc.append("pw", "apple");
			doc.append("name", "apple");
			doc.append("tel", "apple");
			
			Document doc2 = new Document(); //JSON {id: "apple", pw: "apple", .....}
			doc2.append("id", "apple2");
			doc2.append("pw", "apple2");
			doc2.append("name", "apple2");
			doc2.append("tel", "apple2");
			
			System.out.println("4. insert할 document객체 생성");
			
			List<Document> list = new ArrayList<Document>();
			list.add(doc);
			list.add(doc2);
					
			//5.mongoDB로 전송 
			collection.insertMany(list);
			client.close(); //
			System.out.println("5. mongoDB로 전송 ");
		}catch(Exception e) {
			
		}
	}
}
