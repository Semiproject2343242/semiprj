package member.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.rollback;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import java.sql.Connection;
import member.model.dao.MemberDAO;
import member.model.vo.Member;

public class MemberService {

	public Member loginMember(Member member) {

		Connection conn = getConnection();

		Member loginUser = new MemberDAO().loginMember(conn, member);
		close(conn);

		return loginUser;
	}

	public int insertMember(Member member) {

		Connection conn = getConnection();

		int result = new MemberDAO().insertMember(conn, member);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);

		return result;
		
	}

	public Member selectMember(String loginMemberId) {
		
		Connection conn = getConnection();
		
		Member member = new MemberDAO().selectMember(conn, loginMemberId);
				
		close(conn);

		return member;
		
	}

}