DROP TABLE IF EXISTS `tecnologias`;

CREATE TABLE `tecnologias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conhecimento` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tecnologias` (name, conhecimento) VALUES ('Ansible',0),('CI-CD',0),('Cloud (AWS)',0),('Docker',0),('Gitlab',0),('Kubernetes',0),('Linux',0),('Shell-script',0),('Cloud (GCP)',1),('Golang',1),('Vault',1);
