# C-Sharp

PROBLEMAS QUE TUVE:

-----En el contexto de la base de datos de se agrego esta linea de codigo:

optionsBuilder.UseSqlServer(onnectionString: "Server=localhost//SQLEXPRESS; DataBase=coderhouse; TrustServerCertificate=True");

La cuestion es que se tiene que hay que poner " Trusted_Connection=True; " para habilitar el iniciio de sesion del usuario como tambien hay que habilitar la conexion remota de la base de datos. No tiene usuario y contraseña porque para ingresar a la base de datos no es necesaria.

----- Al momento de hacer las migraciones me aparecia el problema de que una clase no tenia una llave primaria:

Se soluciono de la siguiente manera:

[Key] //Sirve para definir que el Id es la llave primaria de la clase public int Id { get { return _Id; } //El getter y el setter permiten obtener y establecer el valor de la llave primaria de manera controlada. set { _Id = value; } }
