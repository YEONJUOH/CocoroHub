package cocoro.studygroup.service;

import java.util.List;

import cocoro.studygroup.dao.StudyGroupDao;
import cocoro.studygroup.model.StudyGroup;

public class StudyCRUDService {
	public static StudyGroupDao dao;
	public static StudyCRUDService service = new StudyCRUDService();
	
	public static StudyCRUDService getInstance(){
		dao = StudyGroupDao.getInstance();
		return service;
	}
	
	public int createStudyGruopService(StudyGroup studygroup){
		studygroup.setS_id(dao.selectS_id()+1);
		System.out.println(studygroup.getS_id());
		return dao.createStudy(studygroup);
	}
	
	public List<StudyGroup> listStudyGroupService(StudyGroup studygroup){
		List<StudyGroup> list = dao.listStudyGroup(studygroup);
		return list;
	}
	
	public StudyGroup selectStudyService(int s_id){
		return dao.selectStudy(s_id);
	}
	
	public int updateHit(StudyGroup studygroup){
		return dao.updateHit(studygroup);
	}
}
