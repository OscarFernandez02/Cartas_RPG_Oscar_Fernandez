<%@ page import="java.util.Arrays, java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>CARTA RPG</title>
</head>

<body>
	<%!public int getValue() {
		int value = 0;
		int[] dau = { 0, 0, 0, 0 };
		for (int i = 0; i < 4; i++) {
			dau[i] = (int) (Math.random() * 6 + 1);
		}
		;

		Arrays.sort(dau);
		for (int i = 1; i < dau.length; i++) {
			value = dau[i] + value;
		}
		return value;
	}

	public int Fuerza(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			break;
		case 1:
			break;
		case 2:
			mod = -2;
			break;
		case 3:
			mod = -2;
			break;
		case 4:
			mod = +2;
			break;
		case 5:
			break;
		}
		return mod;
	}

	public int Destreza(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			mod = +2;
			break;
		case 1:
			break;
		case 2:
			break;
		case 3:
			mod = +2;
			break;
		case 4:
			break;
		case 5:
			break;
		}
		return mod;
	}

	public int Constitucion(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			break;
		case 1:
			break;
		case 2:
			mod = -2;
			break;
		case 3:
			mod = -2;
			break;
		case 4:
			break;
		case 5:
			break;
		}
		return mod;
	}

	public int Inteligencia(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			mod = +2;
			break;
		case 1:
			break;
		case 2:
			break;
		case 3:
			break;
		case 4:
			mod = -2;
			break;
		case 5:
			break;
		}
		return mod;
	}

	public int Sabiduria(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			break;
		case 1:
			mod = +2;
			break;
		case 2:
			break;
		case 3:
			break;
		case 4:
			break;
		case 5:
			break;
		}
		return mod;
	}

	public int Carisma(int a) {
		int mod = 0;
		switch (a) {
		case 0:
			break;
		case 1:
			mod = -2;
			break;
		case 2:
			mod = +2;
			break;
		case 3:
			break;
		case 4:
			mod = -2;
			break;
		case 5:
			break;
		}
		return mod;

	}%>
	
	<%
	String[] clase = { "Elfos", "Enanos", "Nomos", "Medianos", "Semiorcos", "Humanos" };
	String[] foto_clase = { "0", "1", "2", "3", "4", "5" };

	int clase_random = (int) (Math.random() * clase.length);
	%>
	
	<form>
		<label>NOMBRE</label> <input type="text" name="nombre">
	</form>
	
	<div class="table">
		<table border="1">
			<caption>
				<b> <%
 out.print(clase[clase_random]);
 %>
				</b>
			</caption>
			<tbody>
				<tr>
					<th rowspan="9"><img
						src="img/<%out.print(foto_clase[clase_random]);%>.png"
						alt="imagenes" width="80" height="100"></th>
					<th>Carac.</th>
					<th>Valor Base</th>
					<th>Mod.</th>
					<th>Valor Final</th>
				</tr>
				
				<tr>
					<td><i>FUE:</i></td>
					<td>
						<%
						int fuerza = getValue();
						out.print(fuerza);
						%>
					</td>
					<td>
						<%
						int fuerza2 = Fuerza(clase_random);
						out.print(fuerza2);
						%>

					</td>
					<td>
						<%
						int fuerza3 = fuerza + fuerza2;
						out.print(fuerza3);
						%>
					</td>
				</tr>
				
				<tr>
					<td><i>DES:</i></td>
					<td>
						<%
						int destreza = getValue();
						out.print(destreza);
						%>
					</td>
					<td>
						<%
						int destreza2 = Destreza(clase_random);
						out.print(destreza2);
						%>

					</td>
					<td>
						<%
						int destreza3 = destreza + destreza2;
						out.print(destreza3);
						%>
					</td>
				</tr>
				
				<tr>
					<td><i>CON:</i></td>
					<td>
						<%
						int constitucion = getValue();
						out.print(constitucion);
						%>
					</td>
					<td>
						<%
						int constitucion2 = Constitucion(clase_random);
						out.print(constitucion2);
						%>
					</td>
					<td>
						<%
						int constitucion3 = constitucion + constitucion2;
						out.print(constitucion3);
						%>
					</td>
				</tr>
				
				<tr>
					<td><i>INT:</i></td>
					<td>
						<%
						int inteligencia1 = getValue();
						out.print(inteligencia1);
						%>
					</td>
					<td>
						<%
						int inteligencia2 = Inteligencia(clase_random);
						out.print(inteligencia2);
						%>
					</td>
					<td>
						<%
						int inteligencia3 = inteligencia1 + inteligencia2;
						out.print(inteligencia3);
						%>
					</td>
				</tr>
				
				<tr>
					<td><i>SAB:</i></td>
					<td>
						<%
						int sabiduria = getValue();
						out.print(sabiduria);
						%>
					</td>
					<td>
						<%
						int sabiduria1 = Sabiduria(clase_random);
						out.print(sabiduria1);
						%>
					</td>
					<td>
						<%
						int sabiduria3 = sabiduria + sabiduria1;
						out.print(sabiduria3);
						%>
					</td>
				</tr>
				
				<tr>
					<td><i>CAR:</i></td>
					<td>
						<%
						int carisma = getValue();
						out.print(carisma);
						%>
					</td>
					<td>
						<%
						int carisma1 = Carisma(clase_random);
						out.print(carisma1);
						%>
					</td>
					<td>
						<%
						int carisma3 = carisma + carisma1;
						out.print(carisma3);
						%>
					</td>
				</tr>
				
				<tr>
					<td><i>P.V <%
					int vida = constitucion * ((int) (1 + Math.random() * 8));
					out.print(vida);
					%></i></td>
					<td colspan="3"><table width=<%out.print(vida);%>
							bgcolor="magenta">
							<tbody>
								<tr>
									<td>
									</td>
								</tr>
							</tbody>
							
						</table></td>
				</tr>
				
				<tr>
					<td>P.M <%
					int mana = (int) (((inteligencia1 + sabiduria) / 2)) * (int) (1 + Math.random() * 4);
					out.print(mana);
					%></td>
					<td colspan="3"><table width=<%out.print(mana);%>
							bgcolor="cian">
							<tbody>
								<tr>
									<td></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
				
			</tbody>
		</table>
	</div>
	
	<form>
		<input type="hidden" name="clase" value="<% out.print(clase[clase_random]); %>">
		
	<input type="hidden" name="foto" value="<%out.print(foto_clase[clase_random]);  %>">
	
		<input type="hidden" name="fue"
			value="<%out.print(fuerza3);%>">
			
		<input
			type="hidden" name="destreza"
			value="<%out.print(destreza3);%>">
			
		<input
			type="hidden" name="constitucion"
			value="<%out.print(constitucion3);%>">
			
		<input
			type="hidden" name="inteligencia"
			value="<%out.print(inteligencia3);%>">
			
		<input
			type="hidden" name="sabiduria"
			value="<%out.print(sabiduria3);%>">
			
		<input type="hidden" name="carisma"
			value="<%out.print(carisma3);%>">
			
		<input
			type="hidden" name="vida"
			value="<%out.print(vida);%>">
			
		<input
			type="hidden" name="mana"
			value="<%out.print(mana);%> ">
			
		<input
			type="submit" name="enviar">
			
	</form>
</body>
</html>