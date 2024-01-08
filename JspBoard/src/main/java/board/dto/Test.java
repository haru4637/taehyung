package board.dto;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public class Test {

	public static void main(String[] args) {
		//String에 기본적으로 들어있는 해시 메서드는
		//해당 문자열의 값만으로 결과를 충분히 도출해낼 수 있기 떄문에
		//비밀번호의 해시로 사용하기에는 적합하지 않다
		System.out.println("ABCD".hashCode());
		System.out.println("abcddddddddddddaaaaaadfsfdfadsfdafdsaaaaaaa".hashCode());
		
		String message ="Hello, world!";
		// 사용할 수 있는 해시 알고리즘 종류 : SHA256, SHA512, MD5....
		try {
			
			//알고리즘 설정
			//해당 알고리즘의 인스턴스 생성
			MessageDigest eater = MessageDigest.getInstance("MD5");
			
			//해당 알고리즘에 원하는 메세지 세팅
			eater.update(message.getBytes());
			
			byte[] result = eater.digest(); //해쉬값으로 만듦
			
			System.out.println(Arrays.toString(result));
			//System.out.println(new String(result)); //깨짐
			
			// 일반적으로 결과를 16진수 문자열로 바꿔서 DB에 저장하는 편이다.
			StringBuilder builder= new StringBuilder(); 
			for(int i=0; i<result.length; ++i) {
				//System.out.printf("%02x", result[i]); //16진수로 출력 
				builder.append(String.format("%02x",result[i]));
			}
			System.out.println(builder);
			
			//1byte는 16진수 숫자 2개로 표현할 수 있다 
			//108 => 6c
			//(1) 모든 1byte값은 8개의 2진수로 표현될 수 있다 (8bit니까)
			//(2) 4자리의 2진수 숫자는 16진수 숫자 하나로 표현될 수 있다
			//System.out.println("있는 알고리즘입니다");
		}catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
	}
	
}
