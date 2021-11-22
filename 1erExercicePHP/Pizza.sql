CREATE TABLE Pizza(
id_pizza VARCHAR(3) PRIMARY KEY,
Nom_Pizza VARCHAR(30),
Details VARCHAR(200),
Prix DECIMAL(6,3)
)
ENGINE=INNODB
;
CREATE TABLE Client(
	Tel VARCHAR(8) PRIMARY KEY,
    Nom VARCHAR(25),
    Prenom VARCHAR(25),
    Adresse VARCHAR(100),
    MotPass VARCHAR(6)
    
)ENGINE=INNODB
;
CREATE TABLE Commande(
	IDPizza VARCHAR(3),
    Tel VARCHAR(8),
   	DateCmd DATE,
    QtCmd INT,
    PRIMARY KEY(IDPizza,Tel,DateCmd)
   
) ENGINE=INNODB
;
    ALTER TABLE commande ADD CONSTRAINT FK_IDPIZZA FOREIGN KEY (IdPizza) REFERENCES pizza (id_pizza) ON DELETE CASCADE ON UPDATE CASCADE ;
    ALTER TABLE commande ADD CONSTRAINT FK_Tel FOREIGN KEY (Tel) REFERENCES client (Tel) ON DELETE CASCADE ON UPDATE CASCADE;
    INSERT INTO pizza VALUES
("Fmr","Fruits de mer ","Tomate,Mozzarella,Fruits de mer","18.500"),
("Mgh","Margherita","Tomate,Mozzarella,Basilic","8.000"),
("Nap","Napolitaine","Tomate, Mozzarella, Thon, Anchois","12.000"),
("Nep","Neptune","Tomate, Mozzarella, Thon","10.500"),
("Roy","Royale","Tomate, Mozzarella, Jambon Champignon","14.500");