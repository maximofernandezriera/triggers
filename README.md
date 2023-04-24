# Los triggers en pl/pgsql

## Definición

En una base de datos, un trigger (o disparador en español) es un tipo de objeto que se utiliza para ejecutar automáticamente un conjunto de acciones en respuesta a un evento específico en la base de datos, como una inserción, actualización o eliminación de datos en una tabla.

Un trigger se puede considerar como un tipo de procedimiento almacenado que se activa automáticamente cuando se cumple una condición específica. Cuando ocurre el evento que desencadena el trigger, la base de datos ejecuta el código que está asociado con él.

Los triggers se utilizan a menudo para mantener la integridad de los datos en una base de datos, por ejemplo, para actualizar una tabla relacionada cuando se insertan o eliminan datos en otra tabla. También se pueden utilizar para auditar los cambios en los datos o para aplicar reglas de seguridad en una base de datos.

Un primer ejemplo. Un trigger para la auditoría de una tabla.

Implementamos un ejemplo de trigger que cada vez que se realiza una inserción, actualización o eliminación en la tabla "orders", se activa el trigger "audit_orders_trigger". 

* El trigger llama a la función "audit_orders()", que registra los cambios realizados en la tabla en un registro JSON y lo inserta en la tabla de auditoría "orders_audit". 

* NOTA: El registro JSON incluye información sobre la operación realizada (inserción, actualización o eliminación), la tabla en la que se realizó la operación, los valores antiguos y nuevos de la fila afectada y la marca de tiempo en la que se realizó la operación.
