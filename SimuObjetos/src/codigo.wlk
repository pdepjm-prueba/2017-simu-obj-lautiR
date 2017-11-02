class Biciclope
{
	var estamina
	var rol
	  
	
	constructor(_estamina,_rol)
	{
		estamina = _estamina.min(10)
		rol = _rol		
	}
	method arreglarMaquina(maquina)
	{
		rol.arreglar(maquina,self)
	}
	method defenderSector(sector)
	{
		rol.defender(sector)	
	}
	method limpiarSector(sector)
	{
		rol.limpiar(sector,self)
	}	
	method fuerza()
	{
		return estamina/2 +2 + rol.fuerza()
	}
	method defenderSector()
	{
		rol.defender()
	}
}

class Ciclope
{
	var estamina
	var rol
	
	constructor(_estamina,_rol)
	{
		estamina = _estamina
		rol = _rol	
	}
	method arreglarMaquina(maquina)
	{
		
	}
	method defenderSector(sector)
	{
		
	}
	method limpiarSector(sector)
	{
		if (sector.tamanio() == "grande")
		{
			
		}
	}	
	method fuerza()
	{
		return (estamina/2 +2 + rol.fuerza())/2
	}
	method defender(riesgo)
	{
		rol.defender(riesgo,self)
	}
			
	
}

class Soldado
{
	var arma
	var practica = 0
	constructor(_arma)
	{
		arma = _arma
	}
	method defender(riesgo,minion)
	{	
		if (minion.fuerza() > riesgo)
		practica +=2
	}
	method fuerza()
	{
		return practica
	}	
	method limpiar(sector,minion)
	{	
		
	}
}

class Obrero
{
	var herramientas
	constructor(_herramientas)
	{
		herramientas = _herramientas
	}
	method fuerza()
	{
	   return 0
	}
	method defender(riesgo,minion)
	{
		if (minion.fuerza() > riesgo)
		
	}
}

class Mucama
{
	
}

class Amenaza
{
	var nivelAmenaza
	constructor(_nivelAmenza)
	{
		nivelAmenaza= _nivelAmenza
	}
	method riesgo()
	{
		return nivelAmenaza
	}
}

class Sector 
{
	var tamanio
	var dificultad
	constructor(_tamanio,_dificultad)
	{
		tamanio = _tamanio
		dificultad = _dificultad
	}
}




object ciclope inherits Ciclope(5,soldado)
{}
object biciclope inherits Biciclope(5,soldado)
{}
object soldado inherits Soldado(arma1)
{}
object amenaza1 inherits Amenaza(7)
{}




object arma1
{
	var danio = 5
	method danio()
	{
		return danio
	}
	
}