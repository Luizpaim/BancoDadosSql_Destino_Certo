/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ destino_certo /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE destino_certo;

DROP TABLE IF EXISTS pacotes_turisticos;
CREATE TABLE `pacotes_turisticos` (
  `idPacote_Turistico` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Destino` varchar(255) NOT NULL,
  `Origem` varchar(255) NOT NULL,
  `Atrativos` varchar(255) DEFAULT NULL,
  `Saida` date NOT NULL,
  `Retorno` date NOT NULL,
  `Usuario` int(11) NOT NULL,
  PRIMARY KEY (`idPacote_Turistico`),
  KEY `Usuario` (`Usuario`),
  CONSTRAINT `pacotes_turisticos_ibfk_1` FOREIGN KEY (`Usuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS usuario;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Login` varchar(255) NOT NULL,
  `Senha` varchar(8) NOT NULL,
  `Data_de_Nascimento` date NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

INSERT INTO pacotes_turisticos(idPacote_Turistico,Nome,Destino,Origem,Atrativos,Saida,Retorno,Usuario) VALUES(12,'Luiz','sucesso','Guaianazes','Intelectual','1997-06-29','2021-08-14',1);
INSERT INTO usuario(idUsuario,Nome,Login,Senha,Data_de_Nascimento) VALUES(1,'Luiz Henrique','gabyluiz','gabyluiz','1997-06-29'),(26,'sergio','sergio','sergio','2021-12-19'),(27,'Luiz Senac','luiz@senac','luizsena','1997-06-29');