package util;

import java.util.List;

/**
 * 封装分页逻辑
 * @author Administrator
 *
 */
public class PageModel<T> {
	private Integer offset;
	
	public Integer getOffset() {
		return offset;
	}

	public void setOffset(Integer offset) {
		this.offset = offset;
	}

	//结果集
	private List<T> list;
	
	//记录数
	private int total;
	
	//每页多少条数据
	private int pageSize;
	
	 
	public int getTopPageNo() {
		return 1;
	}
	
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	 
	 
	
	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	 

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	 
}
