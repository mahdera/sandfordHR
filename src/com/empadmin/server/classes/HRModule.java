/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author alemayehu
 *
 */
public class HRModule {
	private int id;
	private String moduleName;
	private String description;
	/**
	 * 
	 */
	public HRModule() {
	}
	/**
	 * @param moduleName
	 * @param description
	 */
	public HRModule(String moduleName, String description) {
		this.moduleName = moduleName;
		this.description = description;
	}
	/**
	 * @param id
	 * @param moduleName
	 * @param description
	 */
	public HRModule(int id, String moduleName, String description) {
		this.id = id;
		this.moduleName = moduleName;
		this.description = description;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getModuleName() {
		return moduleName;
	}
	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public void addHRModule(){
		
	}
	
	public static List<HRModule> getAllHRModules(){
		List<HRModule> list = new ArrayList<HRModule>();
		HRModule hrModule = null;
		try{
			String query = "select * from tbl_hr_module order by module_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				hrModule = new HRModule(rSet.getInt("id"),rSet.getString("module_name"),
						rSet.getString("description"));
				list.add(hrModule);
			}//end while loop
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}//end class
