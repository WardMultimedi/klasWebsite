package be.multimedi.klasWebsite.database;

final class DB {
    static final String url = "jdbc:mariadb://noelvaes.eu/javaeeheverleeDB";
    static final String login = "javaeeheverlee";
    static final String pwd = "j@v@eeheverlee2019";

/*
CREATE TABLE `javaeeheverleeDB`.`Leerlingen` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `voornaam` VARCHAR(45) NOT NULL,
  `achternaam` VARCHAR(45) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `homepage` VARCHAR(128) NULL,
  `linkedIn` VARCHAR(128) NULL,
  `image` VARCHAR(45) NULL DEFAULT 'hawk.jpg',
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
 */
}
