package cocoro.studygroup.model;

import java.sql.Timestamp;

public class StudyGroup {

	 //study 테이블과 account 테이블 합침
	
	private int s_id;
	private String s_name;
	private String s_intro;
	private int s_leader_id;
	private String s_max_member;
	private String s_fix_member;//이게 모에요?
	private Timestamp  s_start;
	private Timestamp  s_end;
	
	private int s_attend_check;
	private int s_avil_check;
	private int s_location_x;
	private int s_location_y;
    private int s_online;
    private int s_offline;
    private int s_mento_check;
    private int s_kind_check;
    private int s_time_check;
    private int s_deposit;
    private int s_last_act;
    private int s_tag;
    private int s_recent_hit;
    private int s_total_hit;
    private Timestamp s_history;
    
    //스터디 계좌 정보
    private int s_account;
    
	
	
	
	
}
