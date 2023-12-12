package com.multi.api;

public class MovieVO {
	private int rank;
	private String movieCd;
	private String movieNm;
	private int scrnCnt;
	private String openDt;
	
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getMovieCd() {
		return movieCd;
	}
	public void setMovieCd(String movieCd) {
		this.movieCd = movieCd;
	}
	public String getMovieNm() {
		return movieNm;
	}
	public void setMovieNm(String movieNm) {
		this.movieNm = movieNm;
	}
	public int getScrnCnt() {
		return scrnCnt;
	}
	public void setScrnCnt(int scrnCnt) {
		this.scrnCnt = scrnCnt;
	}
	public String getOpenDt() {
		return openDt;
	}
	public void setOpenDt(String openDt) {
		this.openDt = openDt;
	}
	@Override
	public String toString() {
		return "MovieVO [rank=" + rank + ", movieCd=" + movieCd + ", movieNm=" + movieNm + ", scrnCnt=" + scrnCnt
				+ ", openDt=" + openDt + "]";
	}
	
	
}
