package com.web.vo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class CgvProductVO {
	int  rno, price;
	String pid, pcategory,pname,pinfo,pdate;
	CommonsMultipartFile[] files;
	List<String> pfiles = new ArrayList();
	List<String> psfiles = new ArrayList();
	

	public List<String> getPfiles() {
		return pfiles;
	}
	public void setPfiles(List<String> pfiles) {
		this.pfiles = pfiles;
	}
	public List<String> getPsfiles() {
		return psfiles;
	}
	public void setPsfiles(List<String> psfiles) {
		this.psfiles = psfiles;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPcategory() {
		return pcategory;
	}
	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPinfo() {
		return pinfo;
	}
	public void setPinfo(String pinfo) {
		this.pinfo = pinfo;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public CommonsMultipartFile[] getFiles() {
		return files;
	}
	public void setFiles(CommonsMultipartFile[] files) {
		this.files = files;
	}	
	
}
