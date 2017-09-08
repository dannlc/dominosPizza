package ar.edu.unq.iu.modelo

import java.util.ArrayList
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List

@Accessors
class Plato {
	
	double precio
	Pizza pizza
	Tamanio tamanio
	List<Ingrediente> ingrExtras = new ArrayList()
	
	new(Pizza p, Tamanio tamanio) {
		this.pizza = p
		this.tamanio = tamanio
	}
	
	def getPrecio() {
		var total = pizza.getPrecioBase() * tamanio.getPrecio() //EL UNO REPRESENTA AL PRECIO DEL TAMA�O POR AHORA
		for (i : ingrExtras) {
			total += i.getPrecio()
		}
		total
	}
	
}