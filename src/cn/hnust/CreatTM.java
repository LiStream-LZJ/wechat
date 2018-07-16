package cn.hnust;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;


public class CreatTM extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/plain;charset=utf-8");
		
		try {
			////////////
			// do something
			////////////
			DBConnection db = new DBConnection();
			ResultSet rs = db.executeQuery("select * from questions");
			
			String id = "";
			String question = "";
			String optA = "";
			String optB = "";
			String optC = "";
			String optD = "";
			String answer = "";
			
			int count=0;
			ArrayList<Questions> list= new ArrayList<Questions>();
			while(rs.next()){
				count++;
				id=rs.getString(1);
				question=rs.getString(2);
				optA=rs.getString(3);
				optB=rs.getString(4);
				optC=rs.getString(5);
				optD=rs.getString(6);
				answer=rs.getString(7);
				Questions q= new Questions(id, question, optA, optB, optC, optD, answer);
				list.add(q);
			}
			db.close();
			
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			JSONObject obj = new JSONObject();
			
			Random r = new Random();
			int j=0;
			int[] ques= {-1,-1,-1,-1};
			while(j<4) {
				int randnumber = r.nextInt(list.size());
				int i=0;boolean ok=true;
				while(i<j)
				{
					if(randnumber==ques[i])
					{
						ok=false;
						break;
					}
					i++;
				}
				if(ok)
				{
					//System.out.println(randnumber);
					//if not exist 
					ques[j] = randnumber;
					j++;
				}
				
			}
				
			JSONObject obj1 = new JSONObject();
			Questions q1=list.get(ques[0]);
			obj1.put("id", q1.id);
			obj1.put("question", q1.question);
			obj1.put("optA", q1.optA);
			obj1.put("optB", q1.optB);
			obj1.put("optC", q1.optC);
			obj1.put("optD", q1.optD);
			obj1.put("answer", q1.answer);
			obj.put("question1", obj1);
			
			JSONObject obj2 = new JSONObject();
			Questions q2=list.get(ques[1]);
			obj2.put("id", q2.id);
			obj2.put("question", q2.question);
			obj2.put("optA", q2.optA);
			obj2.put("optB", q2.optB);
			obj2.put("optC", q2.optC);
			obj2.put("optD", q2.optD);
			obj2.put("answer", q2.answer);
			obj.put("question2", obj2);
			
			JSONObject obj3 = new JSONObject();
			Questions q3=list.get(ques[2]);
			obj3.put("id", q3.id);
			obj3.put("question", q3.question);
			obj3.put("optA", q3.optA);
			obj3.put("optB", q3.optB);
			obj3.put("optC", q3.optC);
			obj3.put("optD", q3.optD);
			obj3.put("answer", q3.answer);
			obj.put("question3", obj3);
			
			JSONObject obj4 = new JSONObject();
			Questions q4=list.get(ques[3]);
			obj4.put("id", q4.id);
			obj4.put("question", q4.question);
			obj4.put("optA", q4.optA);
			obj4.put("optB", q4.optB);
			obj4.put("optC", q4.optC);
			obj4.put("optD", q4.optD);
			obj4.put("answer", q4.answer);
			obj.put("question4", obj4);
			
			System.out.println(obj.toString());
			out.print(obj.toString());
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void doSearch(String number) {
		try {
			
			DBConnection db = new DBConnection();
			ResultSet rs = db.executeQuery("select * from questions");
			
			String id = "";
			String question = "";
			String optA = "";
			String optB = "";
			String optC = "";
			String optD = "";
			String answer = "";
			
			int count=0;
			ArrayList<Questions> list= new ArrayList<Questions>();
			while(rs.next()){
				count++;
				id=rs.getString(1);
				question=rs.getString(2);
				optA=rs.getString(3);
				optB=rs.getString(4);
				optC=rs.getString(5);
				optD=rs.getString(6);
				answer=rs.getString(7);
				Questions q= new Questions(id, question, optA, optB, optC, optD, answer);
				list.add(q);
			}
			db.close();
			
			JSONObject obj = new JSONObject();
			
			Random r = new Random();
			int j=0;
			int[] ques= {-1,-1,-1,-1};
			while(j<4) {
				int randnumber = r.nextInt(list.size());
				int i=0;boolean ok=true;
				while(i<j)
				{
					if(randnumber==ques[i])
					{
						ok=false;
						break;
					}
					i++;
				}
				if(ok)
				{
					System.out.println(randnumber);
					//if not exist 
					ques[j] = randnumber;
					j++;
				}
				
			}
			
			for(int k=0,num=1;k<4;k++,num++) {
				Questions q1=list.get(ques[k]);
				//System.out.println(s.getId());
				System.out.println("��"+num+"��");
				System.out.println(q1.question);
				System.out.println(q1.optA);
				System.out.println(q1.optB);
				System.out.println(q1.optC);
				System.out.println(q1.optD);
				//System.out.println(s.getanswer());
			}

			
			System.out.println(obj.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		doSearch("1");
	}

}
