package repositorios

import java.util.HashSet
import usuario.Usuario

class RepositorioUsuario {

	static private HashSet<Usuario> users = new HashSet

	static def add(Usuario nuevoUsuario) {
		users.add(nuevoUsuario)
	}

	static def allUsers() {
		users
	}

	public static def Usuario user(String nombre) {
		users.filter[usuario|usuario.nombre == nombre].head
	}
}
