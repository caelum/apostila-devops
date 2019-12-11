DROP DATABASE IF EXISTS `alura_forum`;
CREATE DATABASE `alura_forum`;

USE `alura_forum`;

DROP TABLE IF EXISTS `Categoria`;
CREATE TABLE `Categoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `pai_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkoj40k1d2libv7v8xx9xjqfbu` (`pai_id`),
  CONSTRAINT `FKkoj40k1d2libv7v8xx9xjqfbu` FOREIGN KEY (`pai_id`) REFERENCES `Categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

INSERT INTO `Categoria` VALUES (1,'Programação',NULL),(2,'Java',1),(3,'Design',NULL),(4,'Web Design',3),(5,'Mobile',NULL),(6,'Front-end',NULL),(7,'Infraestrutura',NULL),(8,'Business',NULL),(9,'Lógica de Programação',1),(10,'C#',1),(11,'Ruby',1),(12,'Java para Web',1),(13,'.NET para Web',1),(14,'Ruby on Rails',1),(15,'Integrações em Java',1),(16,'Integrações em .NET',1),(17,'Testes em Java',1),(18,'Testes em C#',1),(19,'Boas Práticas em Java',1),(20,'Boas Práticas em C#',1),(21,'Certificação Java',1),(22,'Persistência com Java',1),(23,'Programação Funcional',1),(24,'Linguagem C',1),(25,'Computação',1),(26,'Persistência com .NET',1),(27,'Desenvolvimento de Jogos',1),(28,'Análise de Dados',1),(29,'iOS',5),(30,'Android',5),(31,'Multiplataforma',5),(32,'Jogos',5),(33,'Introdução ao Design',3),(34,'Impressos',3),(35,'Vídeo e Motion',3),(36,'3D',3),(37,'Fotografia',3),(38,'UX',3),(39,'Apresentações',3),(40,'HTML e CSS',6),(41,'jQuery',6),(42,'JavaScript',6),(43,'Frameworks MVC',6),(44,'Automação e Performance',6),(45,'SQL',7),(46,'NoSQL',7),(47,'Linux',7),(48,'Builds e Versionamento',7),(49,'Entrega Contínua',7),(50,'Windows',7),(51,'Redes',7),(52,'Internet das Coisas',7),(53,'Embarcados',7),(54,'Cloud Computing',7),(55,'CCNA exame 100-105',7),(56,'Marketing Digital',8),(57,'Excel',8),(58,'Agilidade',8),(59,'SEO e Adwords',8),(60,'Documentação',8),(61,'Concursos',8),(62,'Carreira',8),(63,'Governança',8),(64,'Social Media',8),(65,'Construção de Sites',8),(66,'Startup',8),(67,'E-commerce',8),(68,'Liderança',8),(69,'Business Intelligence',8);

DROP TABLE IF EXISTS `Curso`;
CREATE TABLE `Curso` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `subcategoria_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8okl60ifb3l8aox4cdaurxlsv` (`subcategoria_id`),
  CONSTRAINT `FK8okl60ifb3l8aox4cdaurxlsv` FOREIGN KEY (`subcategoria_id`) REFERENCES `Categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `Curso` VALUES (1,'Java e Orientação a Objetos',2),(2,'Adobe XD',4),(3,'Bootstrap',40),(4,'React Native parte 2',31),(5,'MySQL I',45),(6,'Scrum',58);

DROP TABLE IF EXISTS `Perfil`;
CREATE TABLE `Perfil` (
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Perfil` VALUES ('ROLE_ALUNO'),('ROLE_MODERADOR');

DROP TABLE IF EXISTS `Usuario`;
CREATE TABLE `Usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4tdehxj7dh8ghfc68kbwbsbll` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `Usuario` VALUES (1,'moderador@gmail.com','Moderador','e10adc3949ba59abbe56e057f20f883e'),(2,'aluno1@gmail.com','Aluno 1','e10adc3949ba59abbe56e057f20f883e'),(3,'aluno2@gmail.com','Aluno 2','e10adc3949ba59abbe56e057f20f883e');

DROP TABLE IF EXISTS `Usuario_Perfil`;
CREATE TABLE `Usuario_Perfil` (
  `Usuario_id` bigint(20) NOT NULL,
  `perfis_nome` varchar(255) NOT NULL,
  KEY `FKedqq1fy8bq3glycqr8d95en2b` (`perfis_nome`),
  KEY `FKbk83sv4dmxtharkihuvu5kxg0` (`Usuario_id`),
  CONSTRAINT `FKbk83sv4dmxtharkihuvu5kxg0` FOREIGN KEY (`Usuario_id`) REFERENCES `Usuario` (`id`),
  CONSTRAINT `FKedqq1fy8bq3glycqr8d95en2b` FOREIGN KEY (`perfis_nome`) REFERENCES `Perfil` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Usuario_Perfil` VALUES (1,'ROLE_ALUNO'),(1,'ROLE_MODERADOR'),(2,'ROLE_ALUNO'),(3,'ROLE_ALUNO');

DROP TABLE IF EXISTS `Topico`;
CREATE TABLE `Topico` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataCriacao` datetime DEFAULT NULL,
  `dataUltimaAtualizacao` datetime DEFAULT NULL,
  `descricao` longtext,
  `status` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `curso_id` bigint(20) DEFAULT NULL,
  `autor_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeu1m6i8yc1o47slwy1wyvcb9c` (`curso_id`),
  KEY `FKe3s27bht5huqss48p04bhw106` (`autor_id`),
  CONSTRAINT `FK4gdd21ia46fb2e23opuphcdw4` FOREIGN KEY (`autor_id`) REFERENCES `Usuario` (`id`),
  CONSTRAINT `FKeu1m6i8yc1o47slwy1wyvcb9c` FOREIGN KEY (`curso_id`) REFERENCES `Curso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

INSERT INTO `Topico` VALUES (1,'2019-01-08 17:00:00','2019-01-10 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 1',1,2),(2,'2019-01-07 17:00:00','2019-01-10 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 2',1,2),(3,'2019-01-06 17:00:00','2019-01-10 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 3',1,2),(4,'2019-01-05 17:00:00','2019-01-10 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 4',1,2),(5,'2019-01-04 17:00:00','2019-01-11 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 5',1,2),(6,'2019-01-03 17:00:00','2019-01-11 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 6',1,2),(7,'2019-01-02 17:00:00','2019-01-02 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 7',1,2),(8,'2019-01-01 17:00:00','2019-01-01 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 8',2,2),(9,'2018-12-31 17:00:00','2018-12-31 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 9',2,2),(10,'2018-12-30 17:00:00','2018-12-30 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 10',2,2),(11,'2018-12-29 17:00:00','2018-12-29 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 11',2,2),(12,'2018-12-28 17:00:00','2018-12-28 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 12',2,2),(13,'2018-12-27 17:00:00','2018-12-27 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 13',2,2),(14,'2018-12-26 17:00:00','2018-12-26 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 14',2,2),(15,'2018-12-25 17:00:00','2018-12-25 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 15',3,2),(16,'2018-12-24 17:00:00','2018-12-24 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 16',3,2),(17,'2018-12-23 17:00:00','2018-12-23 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 17',3,2),(18,'2018-12-22 17:00:00','2018-12-22 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 18',3,2),(19,'2018-12-21 17:00:00','2019-01-11 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 19',3,2),(20,'2018-12-20 17:00:00','2019-01-11 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 20',3,2),(21,'2018-12-19 17:00:00','2019-01-11 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 21',3,2),(22,'2018-12-18 17:00:00','2018-12-18 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 22',4,2),(23,'2018-12-17 17:00:00','2018-12-17 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 23',4,2),(24,'2018-12-16 17:00:00','2018-12-16 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 24',4,2),(25,'2018-12-15 17:00:00','2018-12-15 17:00:00','quem pode me ajudar???','NAO_RESPONDIDO','duvida 25',4,2);

DROP TABLE IF EXISTS `Resposta`;
CREATE TABLE `Resposta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataCriacao` datetime DEFAULT NULL,
  `descricao` longtext,
  `solucao` bit(1) NOT NULL,
  `autor_id` bigint(20) NOT NULL,
  `topico_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhw9shwkx1j0po6dbqqfc94t0t` (`topico_id`),
  KEY `FK391y1bp1lk7qe66t13v3da8bq` (`autor_id`),
  CONSTRAINT `FK391y1bp1lk7qe66t13v3da8bq` FOREIGN KEY (`autor_id`) REFERENCES `Usuario` (`id`),
  CONSTRAINT `FKhw9shwkx1j0po6dbqqfc94t0t` FOREIGN KEY (`topico_id`) REFERENCES `Topico` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;