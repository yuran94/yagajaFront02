package member;

public interface YagajaMemberImpl {

	//회원 로그인
	public YagajaMemberVO login(String id, String pass);
	
	//회원 가입
	public int join(String id, String pass, String nickname, String phone, String email);
	
	//회원 정보보기
	public int view(String member_no, String phone, String nickname, String email, String id);
}
