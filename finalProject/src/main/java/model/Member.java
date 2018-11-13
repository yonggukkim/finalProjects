package model;

import java.io.Serializable;
import java.util.Date;
@SuppressWarnings("serial")
public class Member implements Serializable{
	private String memberNum; // 회원등록번호
	private String memberId; // 회원아이디
	private String memberPw; // 회원비밀번호
	private String memberName; // 회원이름
	private Date memberBirth; // 회원생년월일날짜
	private String memberGender; // 회원성별
	private String memberCountryNum; // 회원휴대폰국가번호 이건 빼는건가?
	private String memberPhone; // 회원휴대번호
	private String memberEmail; // 회원이메일주소
	private String memberPostcode; // 회원우편번호
	private String memberAddr1; // 회원주소
	private String memberAddr2; // 회원상세주소
	private String memberTel; // 회원유선전화번호
	private String memberMarrige; // 결혼여부
	private String memberJob; //직업종류
	private String memberAgreeMailing; // 이벤트메일링서비스수신동의여부
	private String memberAgreeSms; // 이벤트문자메시지서비스수신동의여부
	private String memberAgreeTel; // 이벤트유선전화번호수신동의여부;
	private Date memberRegDate; // 회원가입날짜
	private long memberMileage; // 누적마일리지
}
