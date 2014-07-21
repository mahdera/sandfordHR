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
public class KefeleKetema {
	private int id;
	private String kefeleKetema;
	/**
	 * 
	 */
	public KefeleKetema() {
	}
	/**
	 * @param kefeleKetema
	 */
	public KefeleKetema(String kefeleKetema) {
		this.kefeleKetema = kefeleKetema;
	}
	/**
	 * @param id
	 * @param kefeleKetema
	 */
	public KefeleKetema(int id, String kefeleKetema) {
		this.id = id;
		this.kefeleKetema = kefeleKetema;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the kefeleKetema
	 */
	public String getKefeleKetema() {
		return kefeleKetema;
	}
	/**
	 * @param kefeleKetema the kefeleKetema to set
	 */
	public void setKefeleKetema(String kefeleKetema) {
		this.kefeleKetema = kefeleKetema;
	}
	
	public void addKefeleKetema() {
		try {
			String command = "INSERT INTO tbl_kefele_ketema VALUES(0,'"+this.getKefeleKetema()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateKefeleKetema(int id, String kefeleKetema) {
		try {
			String command = "UPDATE tbl_kefele_ketema SET kefele_ketema = '"+kefeleKetema+"' WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteKefeleKetema(int id) {
		try {
			String command = "DELETE FROM tbl_kefele_ketema WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<KefeleKetema> getAllKefeleKetemas() {
		List<KefeleKetema> list = new ArrayList<KefeleKetema>();
		KefeleKetema kefeleKetema = null;
		try {
			String query = "SELECT * FROM tbl_kefele_ketema ORDER BY kefele_ketema ASC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				kefeleKetema = new KefeleKetema(rSet.getInt("id"),rSet.getString("kefele_ketema"));
				list.add(kefeleKetema);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static KefeleKetema getKefeleKetema(int id) {		
		KefeleKetema kefeleKetema = null;
		try {
			String query = "SELECT * FROM tbl_kefele_ketema WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				kefeleKetema = new KefeleKetema(rSet.getInt("id"),rSet.getString("kefele_ketema"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return kefeleKetema;
	}
}//end class
