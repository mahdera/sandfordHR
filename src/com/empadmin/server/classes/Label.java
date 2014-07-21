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
public class Label {
	private int id;
	private String labelId;
	private String labelCaption;

	/**
	 * 
	 */
	public Label() {
	}

	/**
	 * @param labelId
	 * @param labelCaption
	 */
	public Label(String labelId, String labelCaption) {
		this.labelId = labelId;
		this.labelCaption = labelCaption;
	}

	/**
	 * @param id
	 * @param labelId
	 * @param labelCaption
	 */
	public Label(int id, String labelId, String labelCaption) {
		this.id = id;
		this.labelId = labelId;
		this.labelCaption = labelCaption;
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
	public String getLabelId() {
		return labelId;
	}

	/**
	 * @param labelId
	 *            the labelId to set
	 */
	public void setLabelId(String labelId) {
		this.labelId = labelId;
	}

	/**
	 * @return the labelCaption
	 */
	public String getLabelCaption() {
		return labelCaption;
	}

	/**
	 * @param labelCaption
	 *            the labelCaption to set
	 */
	public void setLabelCaption(String labelCaption) {
		this.labelCaption = labelCaption;
	}

	public void addLabel() {
		try {
			String command = "INSERT INTO tbl_label VALUES(0,'"+this.getLabelId()+"','"+
			this.getLabelCaption()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateLabel(int id, String labelId, String labelCaption) {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteLabel(int id) {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Label> getAllLabels() {
		List<Label> list = new ArrayList<Label>();
		Label label = null;
		try {
			String query = "SELECT * FROM tbl_label ORDER BY label_caption";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				label = new Label(rSet.getInt("id"),rSet.getString("label_id"),
						rSet.getString("label_caption"));
				list.add(label);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Label getLabel(int id) {
		Label label = null;
		try {
			String query = "SELECT * FROM tbl_label WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				label = new Label(rSet.getInt("id"),rSet.getString("label_id"),
						rSet.getString("label_caption"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return label;
	}

}// end class
