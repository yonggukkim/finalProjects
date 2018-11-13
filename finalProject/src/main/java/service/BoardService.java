package service;

import java.util.List;

import model.Qna;

public class BoardService {

	public Integer insertQna(Qna qna) {
		return qnaRepository.insertQna(qna);
	}

	public List<Qna> selectQna(Qna qna) {
		return qnaRepository.selectQnaByCondition(qna);
	}

	public Integer updateQna(Qna qna) {
		return qnaRepository.updateQna(qna);
	}

	public Integer deleteQna(String qnaNum) {
		return qnaRepository.deleteComment(qnaNum);
	}
}
