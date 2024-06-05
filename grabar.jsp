<!-- en la directiva page observamos el import="java.sql.*"-->
<!-- esta es la analogia en java a importar paquetes y/o clases-->
<!-- en el paquete java.sql.* estan las clases necesarias-->
<!-- para la conexion a la bd mysql -->
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*,java.net.*" %>
<%
	/*conexion sera nuestra conexion a la bd*/
	Connection conexion=null;
	
	String mensaje="desconectado";
	String msg = "Hi";
	
	/*parametros para la conexion*/
	String driver	= "com.mysql.jdbc.Driver";
	String url		= "jdbc:mysql://localhost:3306/d4";
	String usuario	= "d42023";
	String clave	= "ds4";
	/*procedimiento de la conexion*/
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conexion = DriverManager.getConnection(url,usuario,clave);
		mensaje="conectado x fin";
		String pre 	= request.getParameter("Prefijo");
		String tom 	= request.getParameter("tomo");
		String asi 	= request.getParameter("asiento");
		String ced  = pre+"-"+tom+"-"+asi;
		String nom1 = request.getParameter("nombre1");
		String nom2 = request.getParameter("nombre2");	
		String ape1 = request.getParameter("apellido1");
		String ape2 = request.getParameter("apellido2");
		String esta = request.getParameter("estado_civil");
		String uadc = request.getParameter("usa_ape_casada");
		String ape3 = request.getParameter("apellido_casada");
		String htra = request.getParameter("H_trabajadas");
		String shor = request.getParameter("S_horas");
		String extra1 = request.getParameter("HE_diurnas");
		String extra2 = request.getParameter("HE_nocturnas");
		String extra3 = request.getParameter("HE_mixtas");
		String extra4 = request.getParameter("DF");
		String extra5 = request.getParameter("DT");
		String ssoc = request.getParameter("SS");
		String sedu = request.getParameter("SE");
		String iren = request.getParameter("IR");
		String ded1 = request.getParameter("dedu1");
		String ded2 = request.getParameter("dedu2");
		String ded3 = request.getParameter("dedu3");
		
        Statement st=conexion.createStatement();
        int i=st.executeUpdate("insert into generales(prefijo,tomo,asiento,cedula,nombre1,nombre2,apellido1,apellido2,estado_civil,apellido_casada,usa_apellido_casada,htrabajadas,shora,hextra1,mhextra1,hextra2,mhextra2,hextra3,seguro_social,seguro_educativo,impuesto_renta,descuento1,descuento2,descuento3) values ('"+pre+"','"+tom+"','"+asi+"','"+ced+"','"+nom1+"','"+nom2+"','"+ape1+"','"+ape2+"','"+esta+"','"+ape3+"','"+uadc+"','"+htra+"','"+shor+"','"+extra1+"','"+extra2+"','"+extra3+"','"+extra4+"','"+extra5+"','"+ssoc+"','"+sedu+"','"+iren+"','"+ded1+"','"+ded2+"','"+ded3+"')");		
		
		/*guardando la conexion en la session*/
		session.setAttribute("conexion",conexion);
		msg=ssoc;
		conexion.close();
	} 
	catch (Exception ex){
		mensaje=ex.toString(); 
	}
	
	if(conexion==null){
		mensaje="desconectado";
	}
%>