package cocoro.user.model;

import java.sql.Timestamp;

public class User {

//user , account, mentor 합친 객체 입니다. 
	
private int u_id;
private String u_email;
private String u_pwd;
private Timestamp u_birth;
private boolean u_birth_check;
private String u_address;
private boolean u_address_check;
private String u_image ;
private int u_sex;
private String u_intro;
private String u_tag;
private String u_histroy;
private Timestamp u_last_login;
private boolean u_mento_check;
private int u_like_num;
private String u_sns_check;//이름 그냥 sns 로 바꾸면 안되나요?


//user account 정보
private int u_account;

//멘토 체크 했을 경우 가질 데이터
private String m_major;
private Timestamp m_check_date;









}
