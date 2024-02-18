
DROP TABLE IF EXISTS casa cascade;
DROP TABLE IF EXISTS cliente cascade;
DROP TABLE IF EXISTS reserva cascade;
DROP TABLE IF EXISTS valoraciones cascade;
DROP TABLE IF EXISTS tarifa cascade;



CREATE TABLE casa(
	
	id_casa integer,
	nombre text,
	descripcion text,
	direccion text not null,
	localidad text not null,
	provincia text not null,
	codigo_postal text not null,
	num_habitaciones smallint,
	num_bannos smallint,
	equipamiento text,
	valoracion numeric(4,2),
	CONSTRAINT pk_casa
		PRIMARY KEY (id_casa)

);

CREATE TABLE cliente(

	dni varchar (10),
	nombre varchar (150) not null,
	apellidos varchar (150) not null,
	telefono varchar (20),
	email varchar (300),
	propietario boolean not null,
	CONSTRAINT pk_cliente
		PRIMARY KEY (dni)
	
);

CREATE TABLE reserva (

	id_reserva integer,
	dni_cliente varchar (10),
	id_casa integer,
	fecha_inicio timestamp not null,
	fecha_fin timestamp not null,
	precio_total numeric (4,2) not null,
	estado varchar (10), -- pendiente, completado, cancelado.
	CONSTRAINT pk_reserva
		PRIMARY KEY (id_reserva, dni_cliente, id_casa), 
	CONSTRAINT ck_estado_pendiente_completado_cancelado
		CHECK (estado IN ('pendiente', 'completado', 'cancelado'))
);

CREATE TABLE valoraciones(

	id_valoracion integer,
	id_reserva integer,
	id_casa	integer,
	dni_cliente	varchar(10),
	valoracion smallint not null, --del 1 al 5
	comentario varchar (200),
	CONSTRAINT pk_valoraciones
		PRIMARY KEY (id_valoracion, id_reserva, id_casa, dni_cliente),
	CONSTRAINT ck_valoracion_1_a_5
		CHECK (valoracion BETWEEN 1 AND 5)

);

CREATE TABLE tarifa(

	id_casa integer,
	precio_por_noche numeric (4,2) not null,
	tarifa_servicio_limpieza numeric (4,2),
	CONSTRAINT pk_tarifa
		PRIMARY KEY (id_casa)

);

---------CREACION DE TABLA JOSE CARLOS FERNANDEZ JIMENEZ--------
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1001413659, 'Shurlock', 'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 2, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 3.37);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (765026778, 'Bettine', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 3, 6, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 3.05);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1166039296, 'Ingaborg', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh in', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 2, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 3.35);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (995555310, 'Shirl', 'vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 1, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 3.38);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (748651363, 'Elfreda', 'placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 8, 4, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 3.1);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1015493178, 'Orton', 'pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 3, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 3.2);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (943274718, 'Red', 'nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 2, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 3.05);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (869762320, 'Nicolai', 'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 4, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 3.55);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (879635531, 'Cassondra', 'non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 8, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 3.55);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (982743767, 'Tresa', 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 8, 2, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 3.81);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (103417676, 'Madelina', 'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 1, 4, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 3.39);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (484313326, 'Oralla', 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 3, 9, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 3.22);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (753061603, 'Tammy', 'maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 8, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 3.13);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1058068181, 'Davidson', 'sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 9, 9, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 3.22);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (808037146, 'Jeni', 'pede posuere nonummy integer non velit donec diam neque vestibulum', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 1, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 3.22);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (664222194, 'Durand', 'amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 3, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 3.07);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1337633423, 'Juditha', 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 1, 5, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 3.74);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (137905642, 'Estella', 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 5, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 3.32);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (308631989, 'Redd', 'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 9, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 2.97);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1197833678, 'Izaak', 'in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 6, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 3.28);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1044098851, 'Casey', 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 7, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 3.82);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (950417391, 'Alec', 'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 8, 8, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 3.33);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (769638741, 'Antons', 'ut suscipit a feugiat et eros vestibulum ac est lacinia', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 4, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 3.31);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (133019046, 'Gale', 'morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 4, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 3.33);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1212653067, 'Ivory', 'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 8, 1, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 3.73);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1146114240, 'Eberhard', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 5, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 3.35);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (364614951, 'Pia', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 7, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 3.23);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (692615803, 'Rube', 'a libero nam dui proin leo odio porttitor id consequat in consequat', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 3, 7, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 3.63);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1226001735, 'Barbette', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 8, 1, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 3.11);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (182176867, 'Jillana', 'proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 1, 1, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 3.14);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (602647332, 'Xylina', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 9, 5, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 3.63);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1206281520, 'Melvin', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 3, 8, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 3.77);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (878505865, 'Ingemar', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 3, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 3.78);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1079383830, 'Dix', 'erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 7, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 3.9);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (370319828, 'Kingston', 'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 2, 9, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 3.85);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (291334204, 'Morley', 'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 4, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 3.63);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (336440782, 'Glenda', 'ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 1, 10, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 2.92);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (894780474, 'Tripp', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 1, 2, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 3.13);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (864648339, 'Halli', 'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 6, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 3.88);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (414320246, 'Sebastiano', 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 2, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 3.32);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (317291294, 'Brunhilda', 'id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 9, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 2.98);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (798207361, 'Rhianna', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 4, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 3.17);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (318196715, 'Dewain', 'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 9, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 3.67);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (561676624, 'Elvis', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 9, 3, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 3.37);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (863125668, 'Janene', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 7, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 3.45);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (852439100, 'Idalina', 'sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 5, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 2.93);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (580975552, 'Carree', 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 8, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 3.76);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1101416473, 'Seana', 'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 1, 10, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 3.58);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1344534612, 'Wayne', 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 5, 'Fusce consequat. Nulla nisl. Nunc nisl.', 3.83);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (953974493, 'Minerva', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 4, 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 2.92);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (847363360, 'Tuckie', 'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 8, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 3.69);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (248143406, 'Dene', 'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 9, 6, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 2.96);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1316431662, 'Flossi', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 2, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 3.75);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (127992043, 'Murielle', 'donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 4, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 3.69);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1036327124, 'Elisabetta', 'fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 2, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 3.88);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1134485748, 'Lauraine', 'ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 5, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 2.85);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1027612622, 'Bruis', 'lorem vitae mattis nibh ligula nec sem duis aliquam convallis', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 1, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 2.85);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1253146452, 'Susanna', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 9, 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 2.79);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (169649547, 'Kit', 'ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 3, 2, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 2.94);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (358647487, 'Sheila', 'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 1, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 3.38);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (896878406, 'Hollyanne', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 5, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 3.68);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (218988027, 'Joyann', 'curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 1, 10, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 3.43);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (897945884, 'Caitlin', 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 2, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 3.53);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (538532560, 'Bondon', 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 5, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 3.43);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (994707605, 'Sandy', 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 8, 5, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 2.97);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1033906974, 'Haywood', 'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 6, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 3.13);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (379283520, 'Antoine', 'nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 1, 4, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 3.02);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (927831543, 'Jenilee', 'vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 3, 6, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 3.01);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (330186195, 'Yvor', 'quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 9, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 3.36);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (434851400, 'Karin', 'ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 3, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 3.17);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (493542841, 'Beckie', 'dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 9, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 3.13);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (461593965, 'Stanislaus', 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 2, 9, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 3.55);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1088972509, 'Jourdain', 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 1, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 2.87);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1320995899, 'Arte', 'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 3, 3, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 2.8);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (236663172, 'Fanny', 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 3, 10, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 2.78);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1223352327, 'Nadeen', 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 1, 6, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 3.81);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (257187230, 'Urbanus', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 5, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 3.36);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (278712655, 'Christal', 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 1, 4, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 2.97);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (968726623, 'Carolee', 'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 1, 1, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 3.46);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (330959546, 'Pauly', 'nam nulla integer pede justo lacinia eget tincidunt eget tempus vel', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 7, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 3.75);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (450515077, 'Lucie', 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 1, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 2.9);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1103219063, 'Shellie', 'nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 6, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 3.98);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1327350594, 'Wilone', 'curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 7, 5, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 3.19);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (893133732, 'Trevor', 'vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 8, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 2.89);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (753026738, 'Esra', 'phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 2, 3, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 2.98);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (307052251, 'Druci', 'mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 8, 5, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 3.72);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (121823408, 'Ginni', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 3, 1, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 3.57);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (309598434, 'Vinson', 'accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 8, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 3.46);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1228060709, 'Phyllis', 'phasellus sit amet erat nulla tempus vivamus in felis eu sapien', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 4, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 2.71);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1149483482, 'Diahann', 'id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 5, 2, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 3.83);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1016086846, 'Stanislaus', 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 2, 10, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 2.84);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (353404021, 'Dosi', 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 2, 6, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 2.93);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (663238188, 'Boony', 'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 10, 10, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 3.65);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1304992845, 'Lacie', 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 2, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 3.69);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1340613231, 'Dorey', 'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 1, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 3.78);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1279971792, 'Cristi', 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 8, 1, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 3.9);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1054702164, 'Kristoffer', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 6, 9, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 3.5);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1132367145, 'Gay', 'ac tellus semper interdum mauris ullamcorper purus sit amet nulla', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 6, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 3.18);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (1030358833, 'Giffie', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 8, 3, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 3.53);
insert into casa (id_casa, nombre, descripcion, direccion, localidad, provincia, codigo_postal, num_habitaciones, num_bannos, equipamiento, valoracion) values (389203473, 'Lenore', 'ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 'error: Field ''null'' not found', 4, 8, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 3.73);

select * from casa


--INSERCIÓN DE DATOS TABLA CLIENTES Y CREACIÓN DE PK, CK Y FK SERGIO GONZÁLEZ CORTÉS--

insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('42-3583698', 'Andrée', 'De Avenell', '733-443-7834', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('66-8423898', 'Desirée', 'Hazeldene', '893-223-2446', 'ahazeldene1@vistaprint.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('92-1729514', 'Marie-thérèse', 'Titterell', '626-547-4346', 'atitterell2@wikispaces.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('61-4260807', 'Táng', 'Sigars', '313-455-3699', 'asigars3@gmpg.org', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('22-4218408', 'Tán', 'Dampney', '564-766-6677', null, true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('38-9199332', 'Adélie', 'Gives', '742-854-1294', 'jgives5@nbcnews.com', true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('26-6635293', 'Nuó', 'Morley', '446-273-4601', 'lmorley6@xrea.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('71-0460508', 'Börje', 'Blaver', '398-209-0724', 'bblaver7@hud.gov', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('08-2554278', 'Yáo', 'Gilks', '285-700-4906', 'bgilks8@yale.edu', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('86-3857625', 'Jú', 'Molineux', '996-643-3973', 'cmolineux9@simplemachines.org', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('12-7384244', 'Pénélope', 'Waywell', '676-565-9812', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('27-5994484', 'Gösta', 'Sidebotham', '165-379-6722', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('90-1814379', 'Cléa', 'Blench', null, 'sblenchc@tamu.edu', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('67-1042779', 'Cloé', 'Milksop', '430-256-2253', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('59-6263749', 'Maïté', 'Paice', null, 'epaicee@aol.com', true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('11-7762400', 'Östen', 'Sleit', '667-295-3134', 'dsleitf@columbia.edu', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('32-5731746', 'Anaïs', 'Footitt', null, 'kfootittg@nbcnews.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('00-0571569', 'Lén', 'Peppin', '386-397-2657', 'mpeppinh@yolasite.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('38-4005409', 'Géraldine', 'Kliement', '496-804-0015', 'ekliementi@list-manage.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('51-0508707', 'Aloïs', 'Chewter', '754-390-9068', 'cchewterj@amazon.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('58-6510381', 'Aurélie', 'Grenshiels', '815-932-3755', 'dgrenshielsk@bloglines.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('50-8670692', 'Océanne', 'Nenci', '617-272-6643', 'hnencil@surveymonkey.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('16-2820700', 'Ráo', 'Bartlett', '383-582-2746', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('77-5227569', 'Michèle', 'Bowie', '276-364-5801', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('39-3625964', 'Marie-hélène', 'Pioch', '305-300-6019', 'apiocho@narod.ru', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('15-7238991', 'Pénélope', 'Lideard', '311-552-7708', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('32-3402647', 'Célia', 'O''Dogherty', '754-768-0663', 'rodoghertyq@phpbb.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('33-7488727', 'Loïs', 'Walpole', '356-656-3355', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('85-6590051', 'Crééz', 'Roxburgh', '724-877-0297', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('30-5974161', 'Lèi', 'Matyugin', '941-766-6900', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('90-4321315', 'Marie-hélène', 'Schwerin', '342-957-6454', 'eschwerinu@rakuten.co.jp', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('11-3082692', 'Estève', 'Pinck', '615-243-2726', 'apinckv@oracle.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('00-4064257', 'Marie-hélène', 'Koppens', '154-521-8317', 'rkoppensw@sun.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('04-8523474', 'Yú', 'Kinforth', null, null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('83-7610203', 'Gaëlle', 'Etheridge', '138-643-9400', null, true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('56-6606543', 'Maëlys', 'Brymner', '591-183-1144', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('47-1524170', 'Renée', 'Scobbie', '391-603-4626', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('81-8089552', 'Liè', 'Ovanesian', '381-856-5082', 'rovanesian11@upenn.edu', true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('82-6523547', 'Andréanne', 'Chaston', '586-894-4416', null, true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('31-0950157', 'Lyséa', 'Iskower', '590-432-5025', 'kiskower13@newyorker.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('75-0103300', 'Lyséa', 'Malenoir', '841-967-6572', 'kmalenoir14@yolasite.com', true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('87-1408814', 'Pélagie', 'McIlwraith', '566-227-8184', 'wmcilwraith15@zimbio.com', true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('31-6660955', 'Clémence', 'Morrilly', '176-916-8989', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('28-6073559', 'Mégane', 'Hambatch', '125-850-4521', null, true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('67-7747346', 'Renée', 'Chambers', '209-575-6442', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('11-0144072', 'André', 'McAusland', null, 'mmcausland19@1688.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('27-7614736', 'Gisèle', 'Warbey', '809-591-8916', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('97-3159488', 'Dorothée', 'Belderfield', '575-877-2151', null, true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('21-9947391', 'Danièle', 'Olenchikov', '486-732-8547', 'wolenchikov1c@apple.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('96-4109276', 'Esbjörn', 'Eakly', null, 'teakly1d@msu.edu', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('93-4059704', 'Uò', 'Adolfson', '632-790-3378', 'iadolfson1e@discovery.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('07-7251046', 'Sòng', 'Hirjak', '766-738-4801', 'bhirjak1f@mlb.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('63-5647878', 'Estève', 'Haddon', '505-644-0680', 'shaddon1g@vistaprint.com', true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('19-0020074', 'Léandre', 'Bachanski', null, 'qbachanski1h@nps.gov', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('14-9285702', 'Daphnée', 'Cawthery', '929-513-1171', 'gcawthery1i@mashable.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('66-9663344', 'Alizée', 'Nolleth', '706-551-2025', 'jnolleth1j@google.com.au', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('09-5313508', 'Mélissandre', 'Jelk', '586-935-8468', 'ajelk1k@tripod.com', true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('71-9777525', 'Publicité', 'Gohier', '421-257-4358', 'dgohier1l@senate.gov', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('81-1076276', 'Andréanne', 'Sinnocke', '784-569-6589', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('39-1927227', 'Léana', 'Haig', '568-475-2364', 'bhaig1n@cloudflare.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('16-1910566', 'Adélaïde', 'Skaife', '811-704-4582', 'dskaife1o@nps.gov', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('12-9834289', 'Méghane', 'Hultberg', null, 'khultberg1p@bloomberg.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('35-4285112', 'Noëlla', 'Guy', '795-402-3245', 'wguy1q@msu.edu', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('28-5616533', 'Irène', 'Keays', '599-948-6791', 'okeays1r@yelp.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('59-4232458', 'Cinéma', 'Sacchetti', '169-773-4688', 'vsacchetti1s@list-manage.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('25-4661309', 'Cinéma', 'Gunton', '965-282-8791', 'fgunton1t@omniture.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('57-6605411', 'Gaïa', 'Wickendon', '193-662-8208', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('80-5287746', 'Maëlla', 'Purle', '423-170-8882', 'tpurle1v@earthlink.net', true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('26-3421265', 'Gisèle', 'Gillogley', null, null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('76-5459495', 'Loïc', 'Niemetz', '887-576-8230', 'eniemetz1x@addthis.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('26-8003227', 'Loïc', 'Raddish', '826-166-7432', 'graddish1y@wiley.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('43-0779625', 'Håkan', 'French', '106-254-1774', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('44-4039535', 'Océane', 'Reeveley', '815-290-0092', 'areeveley20@google.nl', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('81-3232083', 'Camélia', 'Giblett', '557-353-1409', 'dgiblett21@abc.net.au', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('30-5961573', 'Laïla', 'Cyphus', '549-820-1871', 'ccyphus22@mapy.cz', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('14-6870365', 'Dà', 'Threlfall', '961-375-9724', 'mthrelfall23@discovery.com', true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('72-4292840', 'Anaëlle', 'Russon', '830-556-1524', 'brusson24@narod.ru', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('88-9631615', 'Publicité', 'Meere', '367-544-6938', 'emeere25@gravatar.com', true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('55-3484142', 'Léandre', 'Parsonson', null, null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('63-8147280', 'Nélie', 'Zanelli', '153-511-1826', 'bzanelli27@ycombinator.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('95-2702388', 'Hélène', 'Withinshaw', null, 'awithinshaw28@paginegialle.it', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('46-9074487', 'Lén', 'Dungee', '721-187-0875', 'jdungee29@go.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('21-6223127', 'Mélinda', 'Mannering', '635-180-7899', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('30-9751391', 'Adèle', 'Beckles', '106-395-1955', 'nbeckles2b@japanpost.jp', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('47-1110843', 'Görel', 'Pagnin', '984-569-9071', 'dpagnin2c@google.de', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('25-2266874', 'Clélia', 'Cornfield', '522-612-7710', 'xcornfield2d@constantcontact.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('65-5127489', 'Aí', 'Starsmore', '847-750-4020', 'rstarsmore2e@tamu.edu', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('59-9946223', 'Marylène', 'Warr', '132-362-5776', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('76-6009098', 'Håkan', 'Cruces', '272-961-1124', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('66-4729461', 'Félicie', 'Oldman', '731-619-1243', 'noldman2h@dyndns.org', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('40-4527610', 'Maëlla', 'Folbige', '147-494-6298', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('92-0647548', 'Loïs', 'Davinet', '229-378-1780', 'ddavinet2j@craigslist.org', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('24-5354011', 'Michèle', 'Dixsee', '294-973-7758', 'adixsee2k@sogou.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('07-7722251', 'Véronique', 'Swire', '959-859-1976', 'bswire2l@ibm.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('47-7503284', 'Maïwenn', 'Mackrell', null, 'gmackrell2m@xinhuanet.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('60-8586327', 'Uò', 'Challace', '345-381-3078', 'kchallace2n@blinklist.com', true);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('53-1099148', 'Maëline', 'Haukey', '463-347-6941', null, false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('42-9900905', 'Eléa', 'Delgardillo', '949-401-0849', 'edelgardillo2p@drupal.org', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('98-8371751', 'Björn', 'McKeating', '337-696-2569', 'mmckeating2q@webmd.com', false);
insert into cliente (dni, nombre, apellidos, telefono, email, propietario) values ('18-1200623', 'Gaïa', 'Ivancevic', '985-198-6799', 'kivancevic2r@typepad.com', false);



SELECT * FROM cliente;

ALTER TABLE reserva
ADD CONSTRAINT fk_reserva_casa
	FOREIGN KEY (id_casa)
	REFERENCES casa,
ADD CONSTRAINT fk_reserva_cliente
	FOREIGN KEY (dni_cliente)
	REFERENCES cliente;

ALTER TABLE valoraciones
ADD CONSTRAINT fk_valoraciones_reserva
	FOREIGN KEY (id_reserva, id_casa, dni_cliente)
	REFERENCES reserva (id_reserva, id_casa, dni_cliente);
	
ALTER TABLE tarifa
ADD CONSTRAINT fk_tarifa_casa
	FOREIGN KEY (id_casa)
	REFERENCES casa;