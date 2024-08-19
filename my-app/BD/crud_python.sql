-- Crear la base de datos crud_python
CREATE DATABASE IF NOT EXISTS crud_python;

-- Usar la base de datos crud_python
USE crud_python;

-- Crear la tabla tbl_empleados
CREATE TABLE IF NOT EXISTS tbl_empleados (
  id_empleado INT NOT NULL AUTO_INCREMENT,
  nombre_empleado VARCHAR(50) DEFAULT NULL,
  apellido_empleado VARCHAR(50) DEFAULT NULL,
  sexo_empleado INT DEFAULT NULL,
  telefono_empleado VARCHAR(50) DEFAULT NULL,
  email_empleado VARCHAR(50) DEFAULT NULL,
  profesion_empleado VARCHAR(50) DEFAULT NULL,
  foto_empleado MEDIUMTEXT,
  salario_empleado BIGINT DEFAULT NULL,
  fecha_registro TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_empleado)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Crear la tabla users
CREATE TABLE IF NOT EXISTS users (
  id INT NOT NULL AUTO_INCREMENT,
  name_surname VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  email_user VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  pass_user TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  created_user TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Insertar datos en la tabla tbl_empleados
INSERT INTO tbl_empleados (nombre_empleado, apellido_empleado, sexo_empleado, telefono_empleado, email_empleado, profesion_empleado, foto_empleado, salario_empleado, fecha_registro)
VALUES
('Juan', 'Pérez', 1, '123456789', 'juan.perez@example.com', 'Ingeniero', 'juan_perez.png', 2500, NOW()),
('Ana', 'García', 2, '987654321', 'ana.garcia@example.com', 'Diseñadora', 'ana_garcia.png', 2000, NOW()),
('Paolo', 'Guerrero', 1, '999999999', 'paolo.guerrero@example.com', 'Futbolista', 'paolo_guerrero.png', 10000, NOW()),
('Teófilo', 'Cubillas', 1, '999999998', 'teofilo.cubillas@example.com', 'Futbolista', 'teofilo_cubillas.png', 9500, NOW()),
('Héctor', 'Chumpitaz', 1, '999999997', 'hector.chumpitaz@example.com', 'Futbolista', 'hector_chumpitaz.png', 9000, NOW()),
('Julio', 'Furukawa', 1, '999999996', 'julio.furukawa@example.com', 'Futbolista', 'julio_furukawa.png', 8500, NOW()),
('Sergio', 'López', 1, '999999995', 'sergio.lopez@example.com', 'Futbolista', 'sergio_lopez.png', 8000, NOW()),
('Nolberto', 'Solano', 1, '999999994', 'nolberto.solano@example.com', 'Futbolista', 'nolberto_solano.png', 7500, NOW()),
('Roberto', 'Chale', 1, '999999993', 'roberto.chale@example.com', 'Futbolista', 'roberto_chale.png', 7000, NOW()),
('Luis', 'Ramírez', 1, '999999992', 'luis.ramirez@example.com', 'Futbolista', 'luis_ramirez.png', 6500, NOW()),
('César', 'Cueto', 1, '999999991', 'cesar.cueto@example.com', 'Futbolista', 'cesar_cueto.png', 6000, NOW()),
('Wilmar', 'Valencia', 1, '999999990', 'wilmar.valencia@example.com', 'Futbolista', 'wilmar_valencia.png', 5500, NOW());


-- Insertar datos en la tabla users
INSERT INTO users (name_surname, email_user, pass_user, created_user)
VALUES
('Laura Fernández', 'laura.fernandez@example.com', 'scrypt:32768:8:1$another_hash$another_salt', NOW()),
('Pedro Castillo', 'pedro.castillo@example.com', 'scrypt:32768:8:1$hash1$salt1', NOW()),
('Francisco Sagasti', 'francisco.sagasti@example.com', 'scrypt:32768:8:1$hash2$salt2', NOW()),
('Manuel Merino', 'manuel.merino@example.com', 'scrypt:32768:8:1$hash3$salt3', NOW()),
('Martín Vizcarra', 'martin.vizcarra@example.com', 'scrypt:32768:8:1$hash4$salt4', NOW()),
('Pedro Pablo Kuczynski', 'pedro.kuczynski@example.com', 'scrypt:32768:8:1$hash5$salt5', NOW()),
('Ollanta Humala', 'ollanta.humala@example.com', 'scrypt:32768:8:1$hash6$salt6', NOW()),
('Alan García', 'alan.garcia@example.com', 'scrypt:32768:8:1$hash7$salt7', NOW()),
('Alejandro Toledo', 'alejandro.toledo@example.com', 'scrypt:32768:8:1$hash8$salt8', NOW()),
('Javier Pérez de Cuéllar', 'javier.perez@example.com', 'scrypt:32768:8:1$hash9$salt9', NOW()),
('Fernando Belaúnde Terry', 'fernando.belaunde@example.com', 'scrypt:32768:8:1$hash10$salt10', NOW());


