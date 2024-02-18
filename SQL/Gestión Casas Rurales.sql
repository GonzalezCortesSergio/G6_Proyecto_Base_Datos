
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
	precio_total numeric (6,2) not null,
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

--select * from casa


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
	
--Insercion reserva Daniel Martínez 
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (1, '48-3659357', 1, '2024-01-01', '2024-09-21', 3289.83, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (2, '50-6154584', 2, '2024-01-15', '2024-07-04', 2235.91, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (3, '15-8909275', 3, '2024-02-22', '2024-12-09', 5018.0, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (4, '65-3973767', 4, '2024-03-12', '2024-12-06', 1138.42, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (5, '13-2024393', 5, '2024-01-24', '2024-09-27', 5400.44, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (6, '14-4521735', 6, '2024-03-03', '2024-07-17', 7429.81, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (7, '84-0630148', 7, '2024-03-29', '2024-08-04', 9338.09, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (8, '36-8957353', 8, '2024-01-08', '2024-04-24', 1597.6, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (9, '22-0585817', 9, '2024-01-12', '2024-05-14', 8495.97, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (10, '89-6178997', 10, '2024-03-25', '2024-05-03', 6685.72, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (11, '51-3279600', 11, '2024-01-13', '2024-08-18', 713.58, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (12, '05-2666474', 12, '2024-03-18', '2024-09-12', 5603.24, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (13, '48-2253645', 13, '2024-03-18', '2024-09-07', 3360.4, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (14, '53-3614606', 14, '2024-01-02', '2024-05-08', 6266.13, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (15, '84-6357066', 15, '2024-01-31', '2024-07-12', 5578.8, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (16, '82-0374696', 16, '2024-01-24', '2024-06-19', 9111.6, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (17, '26-8489960', 17, '2024-02-21', '2024-04-20', 7010.75, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (18, '15-3865658', 18, '2024-01-20', '2024-09-06', 4498.69, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (19, '52-5549281', 19, '2024-02-07', '2024-10-08', 6153.4, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (20, '76-9866357', 20, '2024-03-17', '2024-07-11', 6854.31, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (21, '62-4275617', 21, '2024-03-17', '2024-12-15', 9591.59, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (22, '48-5143834', 22, '2024-03-05', '2024-07-03', 7594.76, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (23, '61-8479166', 23, '2024-01-21', '2024-07-12', 4823.12, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (24, '75-2945747', 24, '2024-01-05', '2024-09-30', 5497.02, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (25, '73-3594354', 25, '2024-01-18', '2024-05-19', 5807.97, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (26, '34-2762449', 26, '2024-02-07', '2024-04-11', 1080.7, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (27, '97-9677216', 27, '2024-02-26', '2024-07-15', 3000.07, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (28, '33-3337961', 28, '2024-03-29', '2024-04-12', 5809.82, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (29, '76-5618031', 29, '2024-02-15', '2024-04-30', 7207.94, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (30, '11-0586239', 30, '2024-03-11', '2024-11-13', 4964.04, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (31, '33-4926474', 31, '2024-02-11', '2024-12-08', 3374.69, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (32, '69-2264043', 32, '2024-02-01', '2024-05-21', 9017.28, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (33, '93-3089919', 33, '2024-03-31', '2024-06-12', 8545.91, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (34, '67-8663501', 34, '2024-03-26', '2024-07-07', 3852.29, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (35, '58-9287697', 35, '2024-01-15', '2024-07-17', 1719.42, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (36, '32-9923664', 36, '2024-03-24', '2024-09-11', 2152.04, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (37, '40-1199180', 37, '2024-02-16', '2024-12-19', 12.27, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (38, '52-1294279', 38, '2024-01-07', '2024-11-13', 9154.63, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (39, '67-8663845', 39, '2024-03-25', '2024-11-19', 2171.46, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (40, '89-7394751', 40, '2024-03-27', '2024-06-18', 1785.74, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (41, '10-4465337', 41, '2024-03-08', '2024-07-23', 435.1, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (42, '33-2608964', 42, '2024-02-06', '2024-07-07', 8195.83, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (43, '78-3463634', 43, '2024-01-16', '2024-06-24', 622.38, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (44, '35-2274278', 44, '2024-01-03', '2024-08-22', 9658.15, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (45, '54-3836902', 45, '2024-03-09', '2024-12-19', 2072.81, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (46, '62-6474468', 46, '2024-02-23', '2024-12-09', 7953.54, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (47, '10-8360455', 47, '2024-01-08', '2024-12-04', 3693.74, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (48, '21-1518574', 48, '2024-01-31', '2024-10-10', 4922.78, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (49, '22-6590190', 49, '2024-03-07', '2024-04-05', 4506.93, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (50, '00-9568614', 50, '2024-01-30', '2024-06-26', 7963.44, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (51, '21-5930716', 51, '2024-03-31', '2024-05-01', 851.92, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (52, '68-2535004', 52, '2024-02-03', '2024-07-18', 1612.2, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (53, '62-7272340', 53, '2024-01-06', '2024-11-25', 8739.69, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (54, '18-1131501', 54, '2024-02-15', '2024-07-13', 6644.94, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (55, '59-6442874', 55, '2024-01-08', '2024-07-09', 5393.87, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (56, '32-5813369', 56, '2024-02-29', '2024-10-03', 1558.17, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (57, '78-1429494', 57, '2024-02-08', '2024-10-03', 2405.11, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (58, '57-7846706', 58, '2024-03-18', '2024-10-22', 529.12, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (59, '91-6066648', 59, '2024-01-10', '2024-07-31', 9021.92, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (60, '10-2879589', 60, '2024-02-18', '2024-04-22', 8997.99, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (61, '60-8848770', 61, '2024-02-15', '2024-12-22', 7375.22, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (62, '84-1573978', 62, '2024-02-25', '2024-10-06', 6407.89, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (63, '58-8577663', 63, '2024-02-03', '2024-04-06', 1162.66, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (64, '53-6163989', 64, '2024-01-18', '2024-07-17', 3928.58, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (65, '93-3358632', 65, '2024-01-31', '2024-09-12', 5155.42, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (66, '55-5540315', 66, '2024-02-17', '2024-07-04', 6929.81, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (67, '39-4442289', 67, '2024-03-10', '2024-08-18', 9310.96, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (68, '23-2237512', 68, '2024-02-13', '2024-05-08', 7777.71, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (69, '11-5992218', 69, '2024-03-26', '2024-08-23', 2569.67, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (70, '34-5412811', 70, '2024-02-02', '2024-07-10', 7063.4, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (71, '31-2044274', 71, '2024-02-29', '2024-07-03', 3591.13, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (72, '14-8006313', 72, '2024-03-21', '2024-05-11', 4337.51, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (73, '88-8894840', 73, '2024-02-03', '2024-09-20', 894.1, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (74, '05-4250010', 74, '2024-03-26', '2024-11-04', 9361.79, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (75, '66-2882423', 75, '2024-03-23', '2024-07-29', 2491.81, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (76, '66-8348811', 76, '2024-02-28', '2024-05-12', 6212.2, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (77, '53-8529486', 77, '2024-01-10', '2024-06-18', 1725.28, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (78, '84-0760634', 78, '2024-03-09', '2024-08-17', 5816.59, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (79, '67-8317293', 79, '2024-03-30', '2024-12-14', 4565.63, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (80, '66-5288590', 80, '2024-03-11', '2024-10-02', 6654.88, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (81, '14-1967074', 81, '2024-03-06', '2024-07-13', 7204.62, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (82, '37-0199568', 82, '2024-01-14', '2024-09-18', 3179.74, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (83, '53-1594511', 83, '2024-02-21', '2024-07-30', 4877.21, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (84, '22-9430085', 84, '2024-01-02', '2024-10-20', 4918.95, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (85, '38-0786750', 85, '2024-02-16', '2024-08-08', 9920.06, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (86, '98-9819061', 86, '2024-03-18', '2024-06-18', 5801.18, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (87, '71-8568964', 87, '2024-01-27', '2024-08-26', 2663.59, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (88, '46-5263698', 88, '2024-02-11', '2024-11-06', 8080.71, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (89, '60-5176516', 89, '2024-03-22', '2024-12-30', 4903.44, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (90, '59-8527852', 90, '2024-02-29', '2024-05-27', 4452.5, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (91, '87-1226483', 91, '2024-01-02', '2024-10-31', 7266.68, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (92, '57-0450731', 92, '2024-02-20', '2024-05-05', 7531.11, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (93, '65-5103377', 93, '2024-01-09', '2024-07-05', 2285.95, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (94, '56-4626376', 94, '2024-02-14', '2024-06-02', 9192.01, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (95, '71-3413368', 95, '2024-03-02', '2024-09-03', 9556.96, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (96, '30-0917571', 96, '2024-01-23', '2024-11-10', 801.52, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (97, '23-6932404', 97, '2024-01-18', '2024-06-18', 5816.64, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (98, '38-9807468', 98, '2024-02-23', '2024-05-19', 4776.64, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (99, '51-4014321', 99, '2024-01-11', '2024-10-05', 236.49, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (100, '58-8747021', 100, '2024-02-01', '2024-11-07', 5697.23, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (101, '67-0228678', 101, '2024-01-04', '2024-11-21', 4284.04, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (102, '83-5474236', 102, '2024-02-08', '2024-11-28', 9558.97, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (103, '46-2269260', 103, '2024-02-22', '2024-10-04', 413.86, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (104, '86-6443722', 104, '2024-02-19', '2024-08-21', 7302.22, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (105, '18-9790290', 105, '2024-02-03', '2024-10-04', 5271.07, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (106, '84-7045687', 106, '2024-01-19', '2024-05-29', 2731.6, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (107, '87-0232542', 107, '2024-02-06', '2024-08-09', 8862.56, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (108, '12-8590363', 108, '2024-02-26', '2024-08-15', 1517.85, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (109, '31-4361644', 109, '2024-01-27', '2024-12-16', 8079.2, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (110, '90-0552016', 110, '2024-02-09', '2024-07-06', 6720.34, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (111, '21-6724706', 111, '2024-01-25', '2024-07-24', 4222.5, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (112, '08-0314016', 112, '2024-03-02', '2024-06-15', 6751.75, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (113, '79-3033779', 113, '2024-03-27', '2024-04-12', 5468.89, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (114, '70-4191507', 114, '2024-03-30', '2024-06-10', 4407.83, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (115, '45-8569837', 115, '2024-03-26', '2024-09-16', 82.07, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (116, '24-5998358', 116, '2024-01-04', '2024-12-27', 9527.54, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (117, '75-1783616', 117, '2024-03-12', '2024-09-26', 3833.86, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (118, '59-7611169', 118, '2024-02-03', '2024-09-09', 1302.95, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (119, '90-0155340', 119, '2024-03-08', '2024-04-30', 628.22, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (120, '10-0608463', 120, '2024-02-20', '2024-12-09', 5105.72, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (121, '53-4235239', 121, '2024-02-29', '2024-07-22', 7622.11, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (122, '73-6879776', 122, '2024-01-22', '2024-10-04', 9908.28, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (123, '67-7321659', 123, '2024-02-12', '2024-09-01', 684.46, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (124, '51-8080362', 124, '2024-03-30', '2024-05-20', 5975.44, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (125, '81-5751381', 125, '2024-01-24', '2024-04-02', 9130.77, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (126, '03-9060589', 126, '2024-01-07', '2024-05-27', 285.91, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (127, '24-7490414', 127, '2024-01-10', '2024-12-13', 7426.07, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (128, '21-4870228', 128, '2024-03-13', '2024-06-06', 823.56, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (129, '42-6479089', 129, '2024-02-21', '2024-12-25', 6718.46, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (130, '92-7455688', 130, '2024-03-14', '2024-10-22', 9989.8, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (131, '98-0938420', 131, '2024-03-19', '2024-09-24', 7723.67, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (132, '52-5981539', 132, '2024-02-17', '2024-12-22', 5607.66, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (133, '77-1453246', 133, '2024-03-28', '2024-11-10', 3438.62, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (134, '38-0640275', 134, '2024-03-17', '2024-10-20', 233.21, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (135, '75-6170886', 135, '2024-01-10', '2024-04-14', 8819.81, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (136, '29-5839871', 136, '2024-01-10', '2024-09-16', 3166.25, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (137, '50-5945939', 137, '2024-01-11', '2024-08-06', 1073.01, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (138, '12-1786052', 138, '2024-01-22', '2024-09-14', 8466.96, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (139, '31-9206942', 139, '2024-01-04', '2024-12-09', 8299.14, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (140, '40-6944345', 140, '2024-01-30', '2024-07-05', 1195.92, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (141, '54-5807064', 141, '2024-03-31', '2024-09-30', 8735.42, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (142, '24-0580179', 142, '2024-02-25', '2024-07-08', 6501.94, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (143, '84-7759603', 143, '2024-01-13', '2024-04-25', 1116.9, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (144, '87-4102591', 144, '2024-02-12', '2024-05-28', 1019.76, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (145, '67-7249578', 145, '2024-03-04', '2024-09-22', 8290.76, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (146, '74-7321379', 146, '2024-01-19', '2024-12-26', 8342.63, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (147, '15-0515887', 147, '2024-01-28', '2024-08-17', 6061.53, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (148, '31-7875720', 148, '2024-03-09', '2024-08-23', 248.59, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (149, '25-6061828', 149, '2024-02-16', '2024-07-04', 6240.84, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (150, '73-1429826', 150, '2024-01-31', '2024-09-08', 6178.36, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (151, '38-6395905', 151, '2024-02-25', '2024-06-19', 5100.37, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (152, '70-4713127', 152, '2024-01-02', '2024-06-02', 1895.49, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (153, '87-8897182', 153, '2024-03-02', '2024-11-21', 5038.29, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (154, '05-8406263', 154, '2024-01-13', '2024-08-14', 761.71, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (155, '99-2385082', 155, '2024-01-06', '2024-04-03', 2318.75, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (156, '55-5943925', 156, '2024-02-24', '2024-08-07', 5343.03, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (157, '61-5699739', 157, '2024-02-14', '2024-08-19', 1203.38, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (158, '82-1684618', 158, '2024-02-17', '2024-10-15', 4475.86, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (159, '78-6000930', 159, '2024-01-13', '2024-04-19', 3957.71, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (160, '86-0400377', 160, '2024-01-11', '2024-12-18', 1952.38, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (161, '88-8865599', 161, '2024-03-19', '2024-08-31', 1926.6, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (162, '99-8559203', 162, '2024-02-23', '2024-08-02', 1890.77, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (163, '73-8251060', 163, '2024-01-16', '2024-07-12', 9928.7, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (164, '78-8716217', 164, '2024-02-17', '2024-12-03', 2198.81, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (165, '26-5484314', 165, '2024-02-20', '2024-08-06', 1502.16, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (166, '76-7724877', 166, '2024-02-10', '2024-12-28', 117.39, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (167, '80-8000280', 167, '2024-01-30', '2024-05-10', 4258.26, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (168, '17-7157102', 168, '2024-03-18', '2024-07-22', 8655.65, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (169, '25-5419620', 169, '2024-03-17', '2024-06-02', 4531.65, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (170, '23-6792413', 170, '2024-03-04', '2024-08-23', 6288.43, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (171, '31-0831404', 171, '2024-01-15', '2024-12-13', 4952.78, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (172, '53-2608559', 172, '2024-01-13', '2024-12-08', 2.85, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (173, '12-9442631', 173, '2024-01-15', '2024-07-02', 1575.2, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (174, '19-8937887', 174, '2024-02-04', '2024-08-02', 7627.24, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (175, '00-3094909', 175, '2024-03-07', '2024-08-30', 3943.02, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (176, '82-3900295', 176, '2024-01-19', '2024-10-07', 9770.07, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (177, '69-3757222', 177, '2024-03-07', '2024-10-14', 7678.93, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (178, '53-7532372', 178, '2024-02-17', '2024-05-28', 3942.69, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (179, '80-5801680', 179, '2024-02-09', '2024-12-07', 6886.58, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (180, '84-4942506', 180, '2024-01-26', '2024-07-18', 6763.07, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (181, '51-8066284', 181, '2024-02-01', '2024-05-18', 6344.13, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (182, '00-1622519', 182, '2024-01-31', '2024-11-11', 4174.38, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (183, '18-3026167', 183, '2024-02-15', '2024-11-22', 9530.66, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (184, '38-3490205', 184, '2024-01-02', '2024-04-02', 6215.14, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (185, '95-5798309', 185, '2024-02-16', '2024-06-13', 8521.98, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (186, '10-3562664', 186, '2024-03-22', '2024-06-13', 1744.13, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (187, '01-1162762', 187, '2024-01-26', '2024-05-29', 7231.5, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (188, '10-5069256', 188, '2024-03-11', '2024-07-13', 8214.98, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (189, '52-7396525', 189, '2024-01-26', '2024-04-25', 696.22, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (190, '29-1077624', 190, '2024-03-25', '2024-05-03', 2529.86, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (191, '88-1923653', 191, '2024-03-01', '2024-10-06', 7005.52, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (192, '36-0582819', 192, '2024-03-13', '2024-05-25', 2449.51, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (193, '23-0598155', 193, '2024-01-16', '2024-05-08', 5422.44, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (194, '99-5453099', 194, '2024-03-24', '2024-08-24', 2214.96, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (195, '11-3564121', 195, '2024-01-06', '2024-06-27', 6278.62, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (196, '75-0870727', 196, '2024-03-02', '2024-07-19', 1282.57, 'cancelado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (197, '32-0819246', 197, '2024-03-18', '2024-10-04', 3536.35, 'pendiente');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (198, '20-7009676', 198, '2024-01-26', '2024-11-27', 3061.01, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (199, '90-8086374', 199, '2024-02-08', '2024-08-03', 7161.8, 'completado');
insert into reserva (id_reserva, dni_cliente, id_casa, fecha_inicio, fecha_fin, precio_total, estado) values (200, '40-1546247', 200, '2024-03-08', '2024-07-01', 9178.15, 'pendiente');
