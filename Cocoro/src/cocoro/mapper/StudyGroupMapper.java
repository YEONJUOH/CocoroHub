package cocoro.mapper;

import java.util.List;

import cocoro.studygroup.model.StudyGroup;

public interface StudyGroupMapper {

	public int createStudy(StudyGroup studygroup);
	public Integer selectS_id();
	public List<StudyGroup> listStudyGroup(StudyGroup studygroup);
	public StudyGroup selectStudy(int s_id);
	public int updateHit(StudyGroup studygroup);
	
}
