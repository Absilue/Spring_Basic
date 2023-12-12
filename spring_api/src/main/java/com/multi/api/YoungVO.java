package com.multi.api;

public class YoungVO {
	private String bizId;
	private String polyBizSjnm;
	private String plcyTpNm;
	private String cnsgNmor;
	private String rqutProcCn;

	public String getBizId() {
		return bizId;
	}

	public void setBizId(String bizId) {
		this.bizId = bizId;
	}

	public String getPolyBizSjnm() {
		return polyBizSjnm;
	}

	public void setPolyBizSjnm(String polyBizSjnm) {
		this.polyBizSjnm = polyBizSjnm;
	}

	public String getPlcyTpNm() {
		return plcyTpNm;
	}

	public void setPlcyTpNm(String plcyTpNm) {
		this.plcyTpNm = plcyTpNm;
	}

	public String getCnsgNmor() {
		return cnsgNmor;
	}

	public void setCnsgNmor(String cnsgNmor) {
		this.cnsgNmor = cnsgNmor;
	}

	public String getRqutProcCn() {
		return rqutProcCn;
	}

	public void setRqutProcCn(String rqutProcCn) {
		this.rqutProcCn = rqutProcCn;
	}

	@Override
	public String toString() {
		return "YoungVO [bizId=" + bizId + ", polyBizSjnm=" + polyBizSjnm + ", plcyTpNm=" + plcyTpNm + ", cnsgNmor="
				+ cnsgNmor + ", rqutProcCn=" + rqutProcCn + "]";
	}

}
