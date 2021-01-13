# Fundamentos de SQL
**Base de datos relacional** Una _base de datos relacional_ es un tipo de bases de datos que almacena y proporciona acceso a puntos de datos relacionados entre sí. Las bases de datos relacionales se basan en el modelo relacional, una forma intuitiva y directa de representar datos en tablas. En una base de datos relacional, cada fila de la tabla es un registro con un ID único llamado _clave_. Las columnas de la tabla contienen atributos de los datos, y cada registro generalmente tiene un valor para cada atributo, lo que facilita el establecimiento de las relaciones entre los puntos de datos.

**Definición 1**  **Dato**  Un dato es considerado la unidad mínima de información. Por sí mismo no provee un significado particular, simplemente es un ente que requiere de una interpretación para dar lugar a la información.

Por ejemplo, 36 o Enchiladas Suizas por sí mismos son datos cuyo significado desconocemos.

**Definición 2**  **Información**  Es un conjunto de datos que a través del procesamiento adecuado adquieren un significado en un contexto determinado.

Por ejemplo, en los datos anteriores, 36 es la edad de Mark Zuckerberg y Enchiladas Suizas es la comida favorita de la Abuelita de Batman. Es decir, le estamos dando un significado a los datos y obteniendo información.

**Definición 3**  **Base de datos**  Es un conjunto de datos con alguna característica en común, puede ser un tema, situación geográfica o algún elemento que los relacione, además de que pueden estar almacenados de manera tradicional (impresos en papel) o en formato digital como un archivo.

Las bases de datos relacionales se basan en el  [Modelo relacional](https://es.wikipedia.org/wiki/Modelo_relacional), propuesto por  [Edgar F](https://es.wikipedia.org/wiki/Edgar_Frank_Codd). Codd en los años setenta. Veamos algunos de sus principales elementos. Más adelante, te presentamos un ejemplo para que puedas observar los elementos de manera más clara):

**Definición 4**  **Tabla**  Una tabla o relación es una entidad con atributos, campos o columnas y tuplas, registros o renglones. Una tabla representa a un número indefinido de elementos descritos con características en común, cada uno en un diferente renglón.

**Definición 5**  **Registros**  Los registros, también llamados tuplas o renglones, se refieren a la descripción de cada ente de la tabla. Son instancias particulares, por ejemplo, si tenemos una tabla Persona, un registro contendrá los datos particulares de una persona.

**Definición 6**  **Campo**  Los campos o atributos se refieren a las columnas de las tablas y representan una característica particular de cada entidad. Por ejemplo, para una persona podrían haber campos para el nombre, edad, dirección, etc. Es importante recordar que los campos son comunes a todos los registros de una tabla.

**Definición 7**  **Dominio**  El dominio se refiere al número de valores que puede obtener una columna, por ejemplo si tuviéramos un campo para almacenar el estado civil, su dominio sería 2 en el caso de tener los valores soltero o casado.

**Definición 8**  **Cardinalidad**  Es el número de registros que tiene una tabla.

**Definición 9**  **Grado**  Es el número de campos que tiene una tabla.
