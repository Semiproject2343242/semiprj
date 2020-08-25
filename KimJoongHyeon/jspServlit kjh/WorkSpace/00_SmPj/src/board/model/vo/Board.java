package board.model.vo;

import java.sql.Date;

public class Board {
	private int 	boardNo;			//게시판 번호
	private String 	boardName;       //게시판 종류
	private String 	boardTitle;      //게시판 제목
	private String 	boardContent;    //게시판 내용
	private Date 	boardCreateDate;   //게시판 생성 날짜
	private Date 	boardModifyDate;   //게시판 수정 날짜
	private int 	boardViewCount;     //게시판 조회수
	private int 	boardReCommend;     //게시판 추천수
	private char 	boardEnable;       //게시판 삭제상태
	private int 	boardWriter;     	//게시판 글쓴이 회원 번호
	private String 	acState;         //접수상태
	private String 	lcName;          //지역이름
	private String 	enrollState;     //등록요청 상태
	private String 	emState;         //취업상태
	private String 	tcName;          //대상명
	private String 	cgName;          //카테고리 이름
	
	public Board() {}

	public Board(int boardNo, String boardName, String boardTitle, String boardContent, Date boardCreateDate,
			Date boardModifyDate, int boardViewCount, int boardReCommend, char boardEnable, int boardWriter,
			String acState, String lcName, String enrollState, String emState, String tcName, String cgName) {
		super();
		this.boardNo = boardNo;
		this.boardName = boardName;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardCreateDate = boardCreateDate;
		this.boardModifyDate = boardModifyDate;
		this.boardViewCount = boardViewCount;
		this.boardReCommend = boardReCommend;
		this.boardEnable = boardEnable;
		this.boardWriter = boardWriter;
		this.acState = acState;
		this.lcName = lcName;
		this.enrollState = enrollState;
		this.emState = emState;
		this.tcName = tcName;
		this.cgName = cgName;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public Date getBoardCreateDate() {
		return boardCreateDate;
	}

	public void setBoardCreateDate(Date boardCreateDate) {
		this.boardCreateDate = boardCreateDate;
	}

	public Date getBoardModifyDate() {
		return boardModifyDate;
	}

	public void setBoardModifyDate(Date boardModifyDate) {
		this.boardModifyDate = boardModifyDate;
	}

	public int getBoardViewCount() {
		return boardViewCount;
	}

	public void setBoardViewCount(int boardViewCount) {
		this.boardViewCount = boardViewCount;
	}

	public int getBoardReCommend() {
		return boardReCommend;
	}

	public void setBoardReCommend(int boardReCommend) {
		this.boardReCommend = boardReCommend;
	}

	public char getBoardEnable() {
		return boardEnable;
	}

	public void setBoardEnable(char boardEnable) {
		this.boardEnable = boardEnable;
	}

	public int getBoardWriter() {
		return boardWriter;
	}

	public void setBoardWriter(int boardWriter) {
		this.boardWriter = boardWriter;
	}

	public String getAcState() {
		return acState;
	}

	public void setAcState(String acState) {
		this.acState = acState;
	}

	public String getLcName() {
		return lcName;
	}

	public void setLcName(String lcName) {
		this.lcName = lcName;
	}

	public String getEnrollState() {
		return enrollState;
	}

	public void setEnrollState(String enrollState) {
		this.enrollState = enrollState;
	}

	public String getEmState() {
		return emState;
	}

	public void setEmState(String emState) {
		this.emState = emState;
	}

	public String getTcName() {
		return tcName;
	}

	public void setTcName(String tcName) {
		this.tcName = tcName;
	}

	public String getCgName() {
		return cgName;
	}

	public void setCgName(String cgName) {
		this.cgName = cgName;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", boardName=" + boardName + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", boardCreateDate=" + boardCreateDate + ", boardModifyDate="
				+ boardModifyDate + ", boardViewCount=" + boardViewCount + ", boardReCommend=" + boardReCommend
				+ ", boardEnable=" + boardEnable + ", boardWriter=" + boardWriter + ", acState=" + acState + ", lcName="
				+ lcName + ", enrollState=" + enrollState + ", emState=" + emState + ", tcName=" + tcName + ", cgName="
				+ cgName + "]";
	}
	
	
	
}

