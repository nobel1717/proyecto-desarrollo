<%@ page language="java" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto2</title>
    <link rel="stylesheet" href="Style.css">
    <link rel="website icon" type="png" href="img/fisclogo.png">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="jquery3-4.min.js" type="text/javascript"></script>
   
</head>
<body>
     <div class="sombra">
          <div class="contenedor">
               <header>
                    <h1>Planilla Proyecto 2</h1><br>
               </header>
               <form id="formulario">
                    <main>
                         <h2 id="datogene">Ingrese los Datos Generales</h2>
                         <!--CEDULA-->
                         <label> Cédula </label>
                         <div class= "campoCedula">
                              <select name="Prefijo" id="Pre" class="opcion" required> 
                                   <option value="1">1</option>
                                   <option value="2">2</option>
                                   <option value="3">3</option>
                                   <option value="4">4</option>
                                   <option value="5">5</option>
                                   <option value="6">6</option>
                                   <option value="7">7</option>
                                   <option value="8" selected>8</option>
                                   <option value="9">9</option>
                                   <option value="10">10</option>
                                   <option value="11">11</option>
                                   <option value="12">12</option>
                                   <option value="13">13</option>
                              </select>
                              <input type="text" class="pre" autocomplete="off" name="tomo" id="tom" maxlength="4" oninput="this.value = this.value.replace(/[^0-9]/g, '');" onblur="cedulaTomo()" required>
                              <input type="text" class="pre" autocomplete="off" name="asiento" id="asi" maxlength="5" oninput="this.value = this.value.replace(/[^0-9]/g, '');" onblur="cedulAsiento()" required>
                              <br><br>
                         </div>
                         <!--NOMBRES-->
                         <label>Nombre</label>
                         <div class="campoNombres">
                              <input type="text" class="pre" autocomplete="off" name="nombre1" id="nom1"  maxlength ="15" oninput="this.value = this.value.replace(/[^A-Za-zÁ-Úá-ú ]/g, '');" onblur="nameAlert()" required>
                              <input type="text" class="pre" autocomplete="off" name="nombre2" id="nom2" maxlength ="15" oninput="this.value = this.value.replace(/[^A-Za-zÁ-Úá-ú ]/g, '');"><br><br>
                         </div>
          
                         <!--APELLIDOS-->
                         <label>Apellido</label>
                         <div class="campoApellidos">
                              <input type="text" class="pre" autocomplete="off" name="apellido1" id="ape1" maxlength ="15" oninput="this.value = this.value.replace(/[^A-Za-zÁ-Úá-ú ]/g, '');" onblur="lastName()" required>
                              <input type="text" class="pre" autocomplete="off" name="apellido2" id="ape2" maxlength ="15" oninput="this.value = this.value.replace(/[^A-Za-zÁ-Úá-ú ]/g, '');"> <br><br>
                         </div>

                         <label>Estado Civil</label>
                         <select id="estado_civil" class="opcion" name="estado_civil">
                              <option value="1" selected>Soltero(a)</option>
                              <option value="2">Casado(a)</option>
                              <option value="3">Viudo(a)</option>
                              <option value="4">Divorciado(a)</option>
                         </select>
                         
                         <label>Usa Apellido de Casada</label>
                         <select id="uadc" class="opcion" name="usa_ape_casada" onchange="casada()"> 
                              <option value="1">Sí</option>
                              <option value="2">No</option>
                         </select>
          
                         <div id="campoApellidoCasada"><br>
                              <label for="adc">Apellido de Casada</label>
                              <input name="apellido_casada" class="pre" type="text" id="adc" autocomplete="off" onblur="validarApellidoCasada()" maxlength ="15" oninput="this.value = this.value.replace(/[^A-Za-zÁ-Úá-ú ]/g, '');">
                         </div>
          
                         <br>
                    </main>
                    
                    <!--INGRESOS MENSUALES-->
                    <aside>
                         <h2>Ingrese los datos mensuales </h2>
                         
                         <div class="preguntas">
                              <input name="H_trabajadas" type="text" class="pre" autocomplete="off"  placeholder="0.00" maxlength="6"  id="H_trabajadas" oninput="limitDecimalPlaces(event, 2);limitarDecimalMaximo(this, 2);" onkeypress="return isNumberKey(event);">
                              <label class="pre-label">Horas trabajadas</label> 
                              <br><br>
                         </div>
                         
                         <div class="preguntas">
                              <input name="S_horas" type="text" placeholder="0.00" class="pre" autocomplete="off" id="S_horas" onblur="tocar()" oninput="limitDecimalPlaces(event, 2)" onkeypress="return isNumberKey(event)">
                              <Label class="pre-label">Salario por hora</Label>
                              <br><br>
                         </div>
                         <div class="preguntas">
                              <label>Turnos Laborales:</label>
                              <select id="turnos" class="opcion" name="turno" onchange="menu()"> 
                                   <option value="ninguno" selected disabled>ELEGIR </option>
                                   <option value=""disabled></option>
                                   <option value="1-Diurno">Diurno</option>
                                   <option value="2-Nocturno">Nocturno</option>
                              </select>
                              <br><br><br>
                         </div>
     
                         <div class="preguntas">
                              <input name="HE_diurnas" type="text" placeholder="0.00" class="pre" autocomplete="off" maxlength="5" id="HE_diurnas"  oninput="limitDecimalPlaces(event, 2);limitarDecimalMaximo(this, 2);" onkeypress="return isNumberKey(event);">
                              <label class="pre-label">Horas Extras Diurnas</label> 
                              <br><br>
                         </div>
                         <div class="preguntas">
                              <input name="HE_nocturnas" type="text" placeholder="0.00"  class="pre"autocomplete="off"  maxlength="5" id="HE_nocturnas" oninput="limitDecimalPlaces(event, 2);limitarDecimalMaximo(this, 2);" onkeypress="return isNumberKey(event);">
                              <label class="pre-label">Horas Extras Nocturnas</label> 
                              <br><br>
                         </div>
                         <div class="preguntas">
                              <input name="HE_mixtas" type="text" placeholder="0.00" class="pre" autocomplete="off"  maxlength="5" id="HE_mixtas" oninput="limitDecimalPlaces(event, 2);limitarDecimalMaximo(this, 2);" onkeypress="return isNumberKey(event);">
                              <label class="pre-label">Horas Extras Mixtas</label> 
                              <br><br>
                         </div>
                         <div class="preguntas">
                              <input name="DF" type="text" class="pre" placeholder="0.00" autocomplete="off"maxlength="5" id="DF" oninput="limitDecimalPlaces(event, 2);limitarDecimalMaximo(this, 2);" onkeypress="return isNumberKey(event);">
                              <label class="pre-label">Horas trabajados Días festivos</label> 
                              <br><br>
                         </div>
                         <div class="preguntas">
                              <input name="DT" type="text" class="pre" placeholder="0.00"  maxlength="5"  autocomplete="off" id="DT" oninput="limitDecimalPlaces(event, 2);limitarDecimalMaximo(this, 2);" onkeypress="return isNumberKey(event);" onblur="calculo_he();">
                              <label class="pre-label">Horas trabajadas en Domingo</label> 
                              <br><br>
                         </div>  
                    </aside>
               
                    <aside>
                         <div class="preguntas">
                              <input name="SB" type="text" class="pre" id="SB" readonly>
                              <Label class="pre-label">Salario Bruto</Label>
                              <br><br><br>
                         </div>
                         <h3>Impuestos</h3>
                         <div class="preguntas">
                              <input name="SS" type="text" class="pre" id="SS" readonly>
                              <Label class="pre-label">Seguro Social</Label>
                              <br><br>
                         </div>
                         <div class="preguntas">
                              <input name="SE" type="text" class="pre" id="SE" readonly>
                              <Label class="pre-label">Seguro Educativo</Label>
                              <br><br>
                         </div>
                         <div class="preguntas">
                              <input name="IR" type="text" class="pre" id="IR" readonly>
                              <label class="pre-label">Impuesto sobre la renta</label> 
                              <br><br> 
                         </div>
                         
                    </aside>
                    <div id="deducciones">
                         <!--OTRAS DEDUCCIONES-->   
                         <h3>Otras Deducciones</h3>            
                         <div class="preguntas">
                              <input type="text" placeholder="0.00" autocomplete="off" name="dedu1" maxlength="8" class="pre" id="de1" oninput="limitDecimalPlaces(event, 2)" onkeypress="return isNumberKey(event);">
                              <label class="pre-label">Deducciones 1</label> <br><br>
                         </div> 
                         <div class="preguntas">
                              <input type="text" name="dedu2" placeholder="0.00" autocomplete="off" maxlength="8" class="pre" id="de2" oninput="limitDecimalPlaces(event, 2)" onkeypress="return isNumberKey(event);">
                              <label class="pre-label"> Deducciones 2</label>
                              <br><br>
                         </div>
                         <div class="preguntas">
                              <input type="text" name="dedu3" maxlength="8" placeholder="0.00" autocomplete="off" class="pre" id="de3" onblur="descuentos()" oninput="limitDecimalPlaces(event, 2)" onkeypress="return isNumberKey(event);">
                              <label class="pre-label"> Deducciones 3</label>
                              <br><br>
                         </div>
                         <div class="preguntas">
                              <input type="text" name="dt"  class="pre" id="DE" readonly>
                              <label class="pre-label">Deducciones Totales</label>                    
                              <br><br><br>
                         </div>
                         
                    </div>    
                    
                    <footer>
                         <h3 class="snn" id="salarioneto">Salario Neto </h3>
                         <div class="preguntas">
                              <input class="pre" type="text" id="SN" name="SN" readonly>
                         </div>   
                         <br><br>
                         <br><br>
                         <a>
                              <input id="envia" class="boton" type="submit" value="Enviar Datos"  onclick="enviarFormulario();">
                              <br><br>
                         </a> 
                                           
                    </footer>
                    <br><br>            
               </form> 
               <a href="Presentacion.html">
                    <input class="boton" type="submit" value="Regresar">
               </a>
               <br><br>
          </div>
     </div>
     <script>
          var sb = 0;
          var desc = 0;
          var sn = 0, ss = 0, se = 0, irf = 0;
          isNaN(0.00);

          /*VALIDACION DE CAMPOS EN CEDULA*/
          function cedulaTomo() {
              var numbertom = document.getElementById("tom").value;
              if (numbertom.trim() === '' || numbertom.length < 4) {
                  document.getElementById("tom").style.border = "3px solid red";
                  Swal.fire({
                      title: 'Campo Oblidatorio',
                      text: 'Este campo, no puede quedar vacío.',
                      icon: 'error'
                  });
              } else {
                  document.getElementById("tom").style.border = "3px solid green";
              }
          }
          function cedulAsiento() {
              var numberasi = document.getElementById("asi").value;
              if (numberasi.trim() === '' || numberasi.length < 4) {
                  document.getElementById("asi").style.border = "3px solid red";
                  Swal.fire({
                      title: 'Campo Oblidatorio',
                      text: 'Este campo, no puede quedar vacío.',
                      icon: 'error'
                  });
              } else {
                  document.getElementById("asi").style.border = "3px solid green";
              }
          }

          /*VALIDACION DEL NOMBRE Y APELLIDO*/
          function nameAlert() {
          var name = document.getElementById("nom1"); 
          if (name.value.trim() === '' || name.value.length < 2 || !isNaN(name.value)) {
          name.style.border = "3px solid red";
          Swal.fire({
               title: 'Debe Ingresar su Nombre',
               text: 'Este campo, no puede quedar vacío.',
               icon: 'error' 
          });
          } else {
          name.style.border = "3px solid green"; 
          }
          }
          function lastName(){
          var lastName = document.getElementById("ape1");
          if (lastName.value.trim() ==='' || lastName.value.length <2 || !isNaN(lastName.value)){
          lastName.style.border = "3px solid red"; 
          Swal.fire({
               title: 'Debe Ingresar su Apellido',
               text: 'Este campo, no puede quedar vacío.',
               icon: 'error' 
          });
          } else {
          lastName.style.border = "3px solid green"; 
          }
          }
          
          /*USO DE APELLIDO CASADA*/
          function validarApellidoCasada() {
          var apellidoCasada = document.getElementById("adc").value;
           var selectCasada = document.getElementById("uadc");

          if (selectCasada.value === "1" && (apellidoCasada.trim() === '' || apellidoCasada.length < 2)) {
               document.getElementById("adc").style.border = "3px solid red";
               Swal.fire({
               title: 'Debe Ingresar su Apellido de Casada',
               text: 'Este campo, no puede quedar vacío.',
               icon: 'error' 
               });
          } else {
          document.getElementById("adc").style.border = "3px solid green";
          }
          }
          function casada() {
          var selectCasada = document.getElementById("uadc");
          var campoApellidoCasada = document.getElementById("campoApellidoCasada");
          var apellidoCasadaInput = document.getElementById("adc");

          if (selectCasada.value === "1") {
               campoApellidoCasada.style.display = "block";
               apellidoCasadaInput.required = true; 
          } else {
               campoApellidoCasada.style.display = "block"; 
               apellidoCasadaInput.required = false; 
               apellidoCasadaInput.disabled = true;
               document.getElementById("adc").style.border = "3px solid green";
          }
          }

          /*HORAS EXTRAS ALERTAS*/
          function tocar(){
          Swal.fire('Por favor elige turno:', '\n-Diurno \n-Nocturno');
          }
          function menu() {
          var resultado;
          var total = 0;

          Swal.fire({
          title: '¿Tienes horas extras?',
          showDenyButton: true,
          confirmButtonText: 'Sí',
          denyButtonText: `No`,
          }).then((result) => {
          if (result.isConfirmed) {
               Swal.fire({
               title: '¡Importante!',
               text: 'Solo podrás ingresar un total de 15 horas extras.',
               icon: 'warning',
               }).then(() => {
               Swal.fire({
                    title: 'Listo',
                    text: 'Pasemos al cálculo de horas extras.',
                    icon: 'success',
               });
               });
          } else if (result.isDenied) {
               resultado = false;
               Swal.fire(
               'No ingrese nada',
               'Pasaremos directo al cálculo de salario bruto.',
               'success'
               );
               console.log("ahora vamos al cálculo de salario bruto sin las horas extras");
               document.getElementById("HE_diurnas").value = 0.00;
               document.getElementById("HE_diurnas").readOnly = true;
               document.getElementById("HE_nocturnas").value = 0.00;
               document.getElementById("HE_nocturnas").readOnly = true;
               document.getElementById("HE_mixtas").value = 0.00;
               document.getElementById("HE_mixtas").readOnly = true;
               document.getElementById("DF").value = 0.00;
               document.getElementById("DF").readOnly = true;
               document.getElementById("DT").value = 0.00;
               document.getElementById("DT").readOnly = true;
               calculo(total);
          }
          });
          console.log(resultado);
          }

          /*CALCULO DE HORAS EXTRAS*/
          function calculo_he(){
          var sh = document.getElementById("S_horas").value;
          var  hm,hn,hd,hf, hdo, te = 0, total = 0;
          hd = parseFloat(document.getElementById("HE_diurnas").value);
          if (isNaN(hd)) {
               document.getElementById("HE_diurnas").value = 0.00;
               hd=0;
          }
          console.log("Horas Diurnas: "+hd);
          hn = parseFloat(document.getElementById("HE_nocturnas").value);
          if (isNaN(hn)) {
               document.getElementById("HE_nocturnas").value = 0.00;
               hn=0;
          }
          console.log("Horas nocturnas: "+hn);
          hm = parseFloat(document.getElementById("HE_mixtas").value);
          if (isNaN(hm)) {
               document.getElementById("HE_mixtas").value = 0.00;
               hm=0;
          }
          console.log("Horas mixtas: "+hm);
          hf = parseFloat(document.getElementById("DF").value);
          if (isNaN(hf)) {
               document.getElementById("DF").value = 0.00;
               hf=0;
          }
          console.log("horas feriadas: " +hf);
          hdo = parseFloat(document.getElementById("DT").value);
          if (isNaN(hdo)) {
               document.getElementById("DT").value = 0.00;
               hdo=0;
          }
          console.log("horas domingo: " + hdo);
          te = hd + hn + hm + hf + hdo;
          console.log("total de horas extras: " + te);
          if(te > 15){
          Swal.fire({
               title: 'Máximo excedido', 
               text: 'Las horas extras no pueden superar 15',
               icon: 'error'
          });
          return;
          }else if(te <= 15 && te > 0){
          hd = hd * sh * 1.25;
          hn = hn * sh * 1.50;
          var selectTurno = document.getElementById("turnos");
          if (selectTurno.value === "DN") {
               hm = hm * sh * 1.50;       
          } else if (selectTurno.value ==="NO") {
               hm = hm * sh * 1.75;
          }
          hf = sh * 2.50;
          hdo = sh * 1.50;
          total = hd + hn +hm + hf + hdo;
          calculo(total);
          }
          }

          /*VALIDACION DE VALOR DECIMAL MAXIMO 60*/
          function limitarDecimalMaximo(input, max) {
          let value = input.value;

          value = value.replace(/,/g, '.');
          const parts = value.split('.');
          const parteEntera = parts[0];
          const parteDecimal = parts[1];

          if (parteDecimal !== undefined) {
          const valorDecimal = parseFloat('0.' + parteDecimal);
          if (valorDecimal > 0.6) { 
               input.style.border = "3px solid red";
               Swal.fire({
               title: 'Decimal Incorrecto',
               text: 'El valor decimal no puede ser mayor a 0.60',
               icon: 'error' 
               });
               input.value = ' '; 
          } else {
               input.style.border = "";
          }
          }
          }
          
          /*CALCULO DE SALARIO BRUTO E IMPUESTOS*/
          function calculo(he){
          var sh = document.getElementById("S_horas").value;
          var ht = document.getElementById("H_trabajadas").value;
          ht = parseInt(ht);
          sh = parseFloat(sh);
          sb = (sh * ht) + he;
          if (isNaN(sb)) {
               sb=0.0;
               Swal.fire({
                    title: 'Campos vacíos',
                    text: 'Dejaste un espacio en blanco, así que quedará en 0.00',
                    icon: 'error' 
               });
          }
          document.getElementById("SB").value = sb.toFixed(2);
          console.log(sb + " salario bruto ");
          ss = sb * 0.0975;
          document.getElementById("SS").value = ss.toFixed(2);
          console.log(ss + " seguro social");
          
          se = sb * 0.0125;
          document.getElementById("SE").value = se.toFixed(2);
          console.log(se + " seguro educativo");

          var ir = sb * 12; 
          if (ir >= 11000) {
               var excedente = (ir - 11000)/ 12;
               var irf = excedente * 0.15;
          } else {
               irf = 0;
          }
          document.getElementById("IR").value = irf.toFixed(2);
          console.log(irf + " impuesto renta");
          }

          /*CALCULO DE DESCUENTOS ADICIONALES*/
          function descuentos() {

          var de1 = 0, de2 = 0, de3 = 0;
          de1 = parseFloat(document.getElementById("de1").value);
          if (isNaN(de1)) {
               document.getElementById("de1").value = 0.00;
               de1 = 0;
          }
          de2 = parseFloat(document.getElementById("de2").value);
          if (isNaN(de2)) {
               document.getElementById("de2").value = 0.00;
               de2 = 0;
          }
          de3 = parseFloat(document.getElementById("de3").value);
          if (isNaN(de3)) {
               document.getElementById("de3").value = 0.00;
               de3 = 0;
          }
          de1 = parseFloat(de1); de2 = parseFloat(de2); de3 = parseFloat(de3);
          var desc = de1 + de2 + de3;
          var dedu = ss + se + irf + desc;
          document.getElementById("DE").value = dedu.toFixed(2);
          console.log(dedu + " descuentos");
          salarioneto(dedu);
          }

          /*FUNCION NaN*/
          function fixNaN(inputElement) {
          const value = parseFloat(inputElement.value);
          if (isNaN(value)) {
          inputElement.value = "0";
          }
          }

          /*CALCULO DEL SALARIO NETO*/
          function salarioneto(dedu) {
          sn = sb - dedu;
          document.getElementById("SN").value = sn.toFixed(2);
          console.log(sn + " salario neto");
          }

          /*LIMITAR A 2 DECIMALES Y SOLO NÚMEROS*/
          function limitDecimalPlaces(e, count) {
          if (e.target.value.indexOf('.') == -1) { return; }
          if ((e.target.value.length - e.target.value.indexOf('.')) > count) {
          e.target.value = parseFloat(e.target.value).toFixed(count);
          }
          }

          function isNumberKey(evt)
          {
          var charCode = (evt.which) ? evt.which : evt.keyCode;
          if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57))
          return false;
          return true;
          }

          function enviarFormulario(){
               $.ajax({
                    type: "POST",
                    url: "grabar.jsp",
                    data: $("form").serialize(),
                    success: function() {
                         document.getElementById("formulario").reset();
                         alert('REGISTRO EXITOSAMENTE GRABADO');    
                    }
               });
          }
     </script>
</body>
</html>
