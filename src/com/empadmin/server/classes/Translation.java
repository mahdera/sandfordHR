/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author mahder
 * 
 */
public class Translation {
	private int id;
	private int languageId;
	private int labelId;
	private String labelValue;

	/**
	 * 
	 */
	public Translation() {
	}

	/**
	 * @param language
	 * @param fieldName
	 * @param fieldValue
	 */
	public Translation(int languageId, int labelId, String labelValue) {
		this.languageId = languageId;
		this.labelId = labelId;
		this.labelValue = labelValue;
	}

	/**
	 * @param id
	 * @param language
	 * @param fieldName
	 * @param fieldValue
	 */
	public Translation(int id, int languageId, int labelId,
			String labelValue) {
		this.id = id;
		this.languageId = languageId;
		this.labelId = labelId;
		this.labelValue = labelValue;
	}
	
	

	/**
	 * @return the languageId
	 */
	public int getLanguageId() {
		return languageId;
	}

	/**
	 * @param languageId the languageId to set
	 */
	public void setLanguageId(int languageId) {
		this.languageId = languageId;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	

	/**
	 * @return the labelId
	 */
	public int getLabelId() {
		return labelId;
	}

	/**
	 * @param labelId the labelId to set
	 */
	public void setLabelId(int labelId) {
		this.labelId = labelId;
	}

	/**
	 * @return the labelValue
	 */
	public String getLabelValue() {
		return labelValue;
	}

	/**
	 * @param labelValue the labelValue to set
	 */
	public void setLabelValue(String labelValue) {
		this.labelValue = labelValue;
	}

	public void addLanguageSetting() {
		try {
			String command = "INSERT INTO tbl_translation VALUES(0,"+this.getLanguageId()+","+
			this.getLabelId()+",'"+this.getLabelValue()+"')";
			System.out.println(command);
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateLanuageSetting(int id, int languageId,
			String labelValue) {
		try {
			String command = "UPDATE tbl_translation SET language_id = "+languageId+", "+
			" label_value = '"+labelValue+"' WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteLanguageSetting(int id) {
		try {
			String command = "DELETE FROM tbl_translation WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}
	
	public static void deleteLanguageSettingForLanguage(int langId){
		try {
			String command = "DELETE FROM tbl_translation WHERE language_id = "+langId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Translation> getAllLanguageSettings() {
		List<Translation> list = new ArrayList<Translation>();
		Translation langSetting = null;		
		try {
			String query = "SELECT * FROM tbl_translation ORDER BY language_id";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				langSetting = new Translation(rSet.getInt("id"),rSet.getInt("language_id"),
						rSet.getInt("label_id"),rSet.getString("label_value"));
				list.add(langSetting);
			}//end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<Translation> getAllLanguageSettingsForLanguage(int langId) {
		List<Translation> list = new ArrayList<Translation>();
		Translation langSetting = null;		
		try {
			String query = "SELECT * FROM tbl_translation WHERE language_id = "+langId+" ORDER BY language_id";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				langSetting = new Translation(rSet.getInt("id"),rSet.getInt("language_id"),
						rSet.getInt("label_id"),rSet.getString("label_value"));
				list.add(langSetting);
			}//end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Translation getLanguageSetting(int id) {		
		Translation langSetting = null;		
		try {
			String query = "SELECT * FROM tbl_translation WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				langSetting = new Translation(rSet.getInt("id"),rSet.getInt("language_id"),
						rSet.getInt("label_id"),rSet.getString("label_value"));				
			}//end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return langSetting;
	}

	public static Translation getLanguageSetting(int languageId,
			String fieldName) {		
		Translation langSetting = null;		
		try {
			String query = "SELECT * FROM tbl_translation WHERE id = "+languageId+" AND field_name = '"+fieldName+"'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				langSetting = new Translation(rSet.getInt("id"),rSet.getInt("language_id"),
						rSet.getInt("label_id"),rSet.getString("label_value"));				
			}//end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return langSetting;
	}
	
	public static String getLabelCaptionInTheSelectedLanguage(int langId,String strLabelId){
		String labelCaption = null;
		try{
			String query = "SELECT label_value AS caption FROM tbl_translation,tbl_label WHERE "+
			"tbl_translation.language_id = "+langId+" AND tbl_translation.label_id = "+
			"tbl_label.id AND tbl_label.label_id = '"+strLabelId+"'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			if(rSet.next())
				labelCaption = rSet.getString("caption");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return labelCaption;
	}
	
	public static String getLabelCaptionInTheSelectedLanguage(int langId,int labelId){
		String labelCaption = null;
		try{
			String query = "SELECT * FROM tbl_translation WHERE language_id = "+langId+
			" AND label_id = "+labelId;
			System.out.println("this is the query: "+query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			if(rSet.next())
				labelCaption = rSet.getString("label_value");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return labelCaption;
	}
}// end class
