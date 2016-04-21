package cocoro.studygroup.model;

import java.sql.Timestamp;

public class StudyGroup {

	 //study ���̺�� account ���̺� ��ħ
	
	private int s_id;
	private String s_name;
	private String s_intro;
	private int s_leader_id;
	private int s_max_member; // 스터디 참여가능 인원수
	private String s_fix_member; // 스터디원 모집을 종료 yes or no (T면 yes, F면 no)
	private Timestamp s_start;
	private Timestamp s_end;
	
	private String s_attend_check;   // T or F
	private int s_abil_check;    // 0 or -1
	private double s_location_x;
	private double s_location_y;
    private String s_online;    // T or F
    private String s_offline;   // T or F
    private String s_mento_check;  // T or F
    private String s_kind_check;  // T or F (스터디의 종류 선택, 폐쇄 or개방. 폐쇄면 T)
    private String s_time_check;  // T or F
    private int s_deposit;   // 0 이상이면 디파짓기능 사용, -1은 사용안함
    private Timestamp s_last_act;
    private String s_tag; // 스터디의 관심사
    private int s_recent_hit; 
    private int s_total_hit;
    private Timestamp s_history;
	
}
