package repository;

import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Member;

public class MemberSessionRepository extends AbstractRepository{
	private final String namespace = "repository.mapper.MemberMapper";
	public Integer insertMember(Member member) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".insertMember";
			System.out.println("Repository" + member.getMemberNum());
			System.out.println("Repository" + member.getMemberId());
			member.setMemberRegDate(Calendar.getInstance().getTime()); // 캘린더라는 클래스에서 객체를 생성해 날짜 값을 저장해준다.
			Integer result = sqlSession.insert(statement, member);
			if(result > 0) sqlSession.commit();
			else sqlSession.rollback();
			return result; 
		}finally {
			sqlSession.close();
		}
	}
	/*public List<Member> selectMemberByCondition(Member member) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			System.out.println("Repository" + member.getMemberNum());
			String statement = namespace + ".selectMemberByCondition";
			return sqlSession.selectList(statement, member);
		}finally {
			sqlSession.close();//조히
		}
	}
	public Integer updateMember(Member member) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".updateMember";
		try {
			System.out.println("Repository" + member.getMemberNum());
			System.out.println("Repository" + member.getMemberId());
			Integer result = sqlSession.update(statement, member);
			if(result > 0) sqlSession.commit();
			else sqlSession.rollback();
			return result;
		}finally {
			sqlSession.close();
		}
	}//수정
	public Integer deleteMember(String memberNo) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".deleteComment";
		try {
			System.out.println("Repository" + memberNo);
			Integer result = sqlSession.delete(String.format("%s.deleteMember", namespace), memberNo);
			if(result > 0) sqlSession.commit();
			else sqlSession.rollback();
			return result;
		}finally {
			sqlSession.close();
		}
	}//삭제
	public List ajaxSelect(Long result) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = null;
		if(result == 1) {
		statement = namespace + ".ajaxSelect";
		}else if(result == 2) {
			statement = namespace + ".ajaxSelect1";
		}
		try {
			System.out.println("Repository"+ result);
			return sqlSession.selectList(statement);
		}finally {
			sqlSession.close();
		}
	}*/

}