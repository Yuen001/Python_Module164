-- CREATE for t_achats
INSERT INTO `t_achats` (ID_achats, FK_object_achats, FK_fournisseur_achats, Prix, Quantite, Raison, date_achats, FK_Fournisseur_achats, FK_object_achats) VALUES (%(ID_achats)s, %(FK_object_achats)s, %(FK_fournisseur_achats)s, %(Prix)s, %(Quantite)s, %(Raison)s, %(date_achats)s, %(FK_Fournisseur_achats)s, %(FK_object_achats)s);

-- READ for t_achats
SELECT * FROM `t_achats` WHERE `id` = %s;

-- UPDATE for t_achats
UPDATE `t_achats` SET `ID_achats` = %(ID_achats)s, `FK_object_achats` = %(FK_object_achats)s, `FK_fournisseur_achats` = %(FK_fournisseur_achats)s, `Prix` = %(Prix)s, `Quantite` = %(Quantite)s, `Raison` = %(Raison)s, `date_achats` = %(date_achats)s, `FK_Fournisseur_achats` = %(FK_Fournisseur_achats)s, `FK_object_achats` = %(FK_object_achats)s WHERE `id` = %s;

-- DELETE for t_achats
DELETE FROM `t_achats` WHERE `id` = %s;

-- CREATE for t_fournisseur
INSERT INTO `t_fournisseur` (ID_fournisseur, nom_entreprsie, Adresse, Ville) VALUES (%(ID_fournisseur)s, %(nom_entreprsie)s, %(Adresse)s, %(Ville)s);

-- READ for t_fournisseur
SELECT * FROM `t_fournisseur` WHERE `id` = %s;

-- UPDATE for t_fournisseur
UPDATE `t_fournisseur` SET `ID_fournisseur` = %(ID_fournisseur)s, `nom_entreprsie` = %(nom_entreprsie)s, `Adresse` = %(Adresse)s, `Ville` = %(Ville)s WHERE `id` = %s;

-- DELETE for t_fournisseur
DELETE FROM `t_fournisseur` WHERE `id` = %s;

-- CREATE for t_lieu
INSERT INTO `t_lieu` (ID_lieu, Ville, Adresse, NPA) VALUES (%(ID_lieu)s, %(Ville)s, %(Adresse)s, %(NPA)s);

-- READ for t_lieu
SELECT * FROM `t_lieu` WHERE `id` = %s;

-- UPDATE for t_lieu
UPDATE `t_lieu` SET `ID_lieu` = %(ID_lieu)s, `Ville` = %(Ville)s, `Adresse` = %(Adresse)s, `NPA` = %(NPA)s WHERE `id` = %s;

-- DELETE for t_lieu
DELETE FROM `t_lieu` WHERE `id` = %s;

-- CREATE for t_lieu_object_destock
INSERT INTO `t_lieu_object_destock` (ID_lieu_object_destock, FK_object_destock, FK_lieu_destock, Raison, Quantité, date_lieu_object_destock, FK_lieu_destock, FK_object_destock) VALUES (%(ID_lieu_object_destock)s, %(FK_object_destock)s, %(FK_lieu_destock)s, %(Raison)s, %(Quantité)s, %(date_lieu_object_destock)s, %(FK_lieu_destock)s, %(FK_object_destock)s);

-- READ for t_lieu_object_destock
SELECT * FROM `t_lieu_object_destock` WHERE `id` = %s;

-- UPDATE for t_lieu_object_destock
UPDATE `t_lieu_object_destock` SET `ID_lieu_object_destock` = %(ID_lieu_object_destock)s, `FK_object_destock` = %(FK_object_destock)s, `FK_lieu_destock` = %(FK_lieu_destock)s, `Raison` = %(Raison)s, `Quantité` = %(Quantité)s, `date_lieu_object_destock` = %(date_lieu_object_destock)s, `FK_lieu_destock` = %(FK_lieu_destock)s, `FK_object_destock` = %(FK_object_destock)s WHERE `id` = %s;

-- DELETE for t_lieu_object_destock
DELETE FROM `t_lieu_object_destock` WHERE `id` = %s;

-- CREATE for t_lieu_object_stock
INSERT INTO `t_lieu_object_stock` (ID_lieu_object, FK_object_stock, FK_lieu_stock, Raison, Quantité, date_stock, FK_lieu_stock, FK_object_lieu) VALUES (%(ID_lieu_object)s, %(FK_object_stock)s, %(FK_lieu_stock)s, %(Raison)s, %(Quantité)s, %(date_stock)s, %(FK_lieu_stock)s, %(FK_object_lieu)s);

-- READ for t_lieu_object_stock
SELECT * FROM `t_lieu_object_stock` WHERE `id` = %s;

-- UPDATE for t_lieu_object_stock
UPDATE `t_lieu_object_stock` SET `ID_lieu_object` = %(ID_lieu_object)s, `FK_object_stock` = %(FK_object_stock)s, `FK_lieu_stock` = %(FK_lieu_stock)s, `Raison` = %(Raison)s, `Quantité` = %(Quantité)s, `date_stock` = %(date_stock)s, `FK_lieu_stock` = %(FK_lieu_stock)s, `FK_object_lieu` = %(FK_object_lieu)s WHERE `id` = %s;

-- DELETE for t_lieu_object_stock
DELETE FROM `t_lieu_object_stock` WHERE `id` = %s;

-- CREATE for t_object
INSERT INTO `t_object` (ID_object, nom_object, nombre_utilisation, Gouts, Prix) VALUES (%(ID_object)s, %(nom_object)s, %(nombre_utilisation)s, %(Gouts)s, %(Prix)s);

-- READ for t_object
SELECT * FROM `t_object` WHERE `id` = %s;

-- UPDATE for t_object
UPDATE `t_object` SET `ID_object` = %(ID_object)s, `nom_object` = %(nom_object)s, `nombre_utilisation` = %(nombre_utilisation)s, `Gouts` = %(Gouts)s, `Prix` = %(Prix)s WHERE `id` = %s;

-- DELETE for t_object
DELETE FROM `t_object` WHERE `id` = %s;

-- CREATE for t_vente
INSERT INTO `t_vente` (ID_argent_reçu, ID_object, Prix, Quantite, Raison, date_vente, FK_argent_recu_object) VALUES (%(ID_argent_reçu)s, %(ID_object)s, %(Prix)s, %(Quantite)s, %(Raison)s, %(date_vente)s, %(FK_argent_recu_object)s);

-- READ for t_vente
SELECT * FROM `t_vente` WHERE `id` = %s;

-- UPDATE for t_vente
UPDATE `t_vente` SET `ID_argent_reçu` = %(ID_argent_reçu)s, `ID_object` = %(ID_object)s, `Prix` = %(Prix)s, `Quantite` = %(Quantite)s, `Raison` = %(Raison)s, `date_vente` = %(date_vente)s, `FK_argent_recu_object` = %(FK_argent_recu_object)s WHERE `id` = %s;

-- DELETE for t_vente
DELETE FROM `t_vente` WHERE `id` = %s;
