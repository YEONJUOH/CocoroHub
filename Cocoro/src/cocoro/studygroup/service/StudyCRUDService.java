package cocoro.studygroup.service;

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
		return dao.createStudy(studygroup);
	}
}
