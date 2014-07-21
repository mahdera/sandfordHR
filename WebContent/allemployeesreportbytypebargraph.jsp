<title>All Faculties List</title>
<%@page import="net.sf.jasperreports.engine.util.JRLoader"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.empadmin.server.classes.*"%>
<%@ page language="java"
	import="net.sf.jasperreports.engine.*,net.sf.jasperreports.engine.export.*"%>
<%@ page import="java.sql.*,java.io.*"%>
<%
	//JRPdfExporter pdfExporter = null;
	String filename = "employee type bar graph.jrxml";
	String sourceJrxmlFile = application.getRealPath("reports/"
			+ filename);
	System.out.println("source Jasper File : " + sourceJrxmlFile);
	String destinationJasperFile = application
			.getRealPath("reports/Faculty Report.jasper");
	System.out.println("jasper file : " + destinationJasperFile);
	String destinationJrprintFile = application
			.getRealPath("reports/Faculty Report.jrprint");
	System.out.println("Destination JRprint file : "
			+ destinationJrprintFile);
	String destinationPDFPath = application
			.getRealPath("reports/Faculty Report.pdf");
	System.out.println(destinationPDFPath);
	//String path = application.getRealPath("/");
	//JasperPrint jasperPrint = JasperFillManager.fillReport(path + "/" + filename, null, DBConnection.getCon());
	System.out.println("Report Created...");
	String reporttype = request.getParameter("format");
	OutputStream outputStream = response.getOutputStream();
	JRExporter exporter = null;
	JasperPrint jasperPrint = null;
	try {
		if ("pdf".equalsIgnoreCase(reporttype)) {
			response.setContentType("application/pdf");
			response.reset();
			//outputStream.setContentType("application/pdf");
			JasperCompileManager.compileReportToFile(sourceJrxmlFile,
					destinationJasperFile);
			JasperFillManager.fillReportToFile(destinationJasperFile,
					destinationJrprintFile, null,
					DBConnection.getDatabaseConnection());
			jasperPrint = (JasperPrint) JRLoader
					.loadObject(destinationJrprintFile);
			exporter = new JRPdfExporter();
			exporter.setParameter(JRExporterParameter.JASPER_PRINT,
					jasperPrint);
			exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
					outputStream);
			System.out.println("Exporting report to pdf...");
			exporter.exportReport();
			response.flushBuffer();

		} else if ("rtf".equalsIgnoreCase(reporttype)) {
			response.setContentType("application/rtf");
			response.setHeader("Content-Disposition",
					"inline; filename=\"file.rtf\"");
			exporter = new JRRtfExporter();
			exporter.setParameter(JRExporterParameter.JASPER_PRINT,
					jasperPrint);
			exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
					outputStream);
		} else if ("html".equalsIgnoreCase(reporttype)) {
			exporter = new JRHtmlExporter();
			exporter.setParameter(JRExporterParameter.JASPER_PRINT,
					jasperPrint);
			exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
					outputStream);
		} else if ("xls".equalsIgnoreCase(reporttype)) {
			response.setContentType("application/xls");
			response.setHeader("Content-Disposition",
					"inline; filename=\"file.xls\"");
			exporter = new JRXlsExporter();
			exporter.setParameter(JRExporterParameter.JASPER_PRINT,
					jasperPrint);
			exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
					outputStream);
		} else if ("csv".equalsIgnoreCase(reporttype)) {
			response.setContentType("application/csv");
			response.setHeader("Content-Disposition",
					"inline; filename=\"file.csv\"");
			exporter = new JRCsvExporter();
			exporter.setParameter(JRExporterParameter.JASPER_PRINT,
					jasperPrint);
			exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
					outputStream);
		}		
	} catch (JRException e) {
		throw new Exception(e);
	} finally {
		if (outputStream != null) {
			try {
				outputStream.close();
			} catch (IOException ex) {
			}
		}
	}
%>
