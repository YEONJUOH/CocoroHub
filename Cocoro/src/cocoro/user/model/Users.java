package cocoro.user.model;

import java.sql.Timestamp;

public class Users {

//user , account, mentor 갓상효
	
	private int u_id; //회원번호
	private String u_email; // 이메일
	private String u_pwd; //비밀번호
	private Timestamp u_birth; //생년월일
	private String u_birth_check;   // 제약조건 T or F 생년월일 공개 비공개 
	private String u_address; //주소 
	private String u_address_check;  // 제약조건  T or F 주소공개 비공개
	private String u_image ; //이미지관리
	private String u_sex;    // 제약조건 남 or 여
	private String u_intro;	//자기소개
	private String u_tag; 	//관심사
	private Timestamp u_histroy;	//가입일자
	private Timestamp u_last_login;	//마지막 접속일자
	private String u_mento_check;  // 제약조건 T or F 멘토여부 
	private int u_like_num;	//좋아요수
	private String u_sns_address; //sns계정주소
	private int u_goal_ration;	//목표달성률

}
