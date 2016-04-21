package cocoro.user.model;

import java.sql.Timestamp;

public class Users {

//user , account, mentor 한글입력했습니다.
	
private int u_id;
private String u_email;
private String u_pwd;
private Timestamp u_birth;
private String u_birth_check;   // 제약조건 T or F
private String u_address;
private String u_address_check;  // 제약조건  T or F
private String u_image ;
private String u_sex;    // 제약조건 남 or 여
private String u_intro;
private String u_tag;
private Timestamp u_histroy;
private Timestamp u_last_login;
private String u_mento_check;  // 제약조건 T or F
private int u_like_num;
private String u_sns_address; 
private int u_goal_ratio;

}
