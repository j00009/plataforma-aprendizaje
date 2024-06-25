-- CREATE TABLE inscripciones (id_inscripciones SERIAL PRIMARY KEY, inscribirse BOOL, id_usuario INT, id_curso INT);
-- CREATE TABLE usuarios (id_usuarios SERIAL PRIMARY KEY, nombre VARCHAR, email VARCHAR, password VARCHAR, tipo_usuario VARCHAR);
-- CREATE TABLE cursos (id_cursos SERIAL PRIMARY KEY, nombre VARCHAR, descripcion VARCHAR, fecha_inicio DATE, fecha_termino DATE, portada VARCHAR, id_area INT);
-- CREATE TABLE areas (id_areas SERIAL PRIMARY KEY, nombre VARCHAR)

ALTER TABLE inscripciones 
ADD CONSTRAINT fk_id_usuario
FOREIGN KEY (id_usuario)
REFERENCES usuarios(id_usuarios)

ALTER TABLE inscripciones 
ADD CONSTRAINT fk_id_curso
FOREIGN KEY (id_curso)
REFERENCES cursos(id_cursos)

ALTER TABLE cursos
ADD CONSTRAINT fk_id_areas
FOREIGN KEY (id_area)
REFERENCES areas(id_areas)


