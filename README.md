# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:
* Ruby version : 2.3.4
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions


# 
# Projet : Airbnb
Refaire Airbnb avec Ruby on Rail et en groupe

## 
## Préparation du projet - Organisation des models - UML diagramme de classes

1 personne s'incrit sur Home'lidays :
### table_name : registered_user --> model Registered_user --> created
> * id_registered_user:integer (unique)
> * name:string
> * firstname:string
> * address1:string
> * address2:string
> * zip_code:integer
> * area_code:?? (IDF en France, CA aux USA-state_code)
> * city_name:string
> * id_renter: foreign key (table: renter)
> * id_tenant: foreign key (table: tenant)

Home'lidays permet de louer des propriétés (maison, appartement, caravane) pour une durée donnée.
### table_name : rented_place --> model Rented_place --> created
> * id_rented_place:integer (unique)
> * address1:string
> * address2:string
> * zip_code:integer
> * area_code:?? (IDF en France, CA aux USA-state_code)
> * city_name:string
> * description:string (text_area)
> * nb_of_room:integer
> * facilities:string
> * other_informations:string
> * id_renter: foreign key (table: renter)
> * id_tenant: foreign key (table: tenant)

La personne peut louer sa propriété ou être locataire pour les vacances : 2 tables de jointures
### table_name : renter --> model Renter --> created
> * id_renter:integer (unique)
> * id_registered_user:foreign key
> * id_rented_place: foreign key 

### table_name : tenant --> model Tenant --> created
> * id_tenant:integer (unique)
> * id_registered_user:foreign key
> * id_rented_place: foreign key

### table_name : image --> model Image --> created
Pour chaque location présentée, il faut des visuels attirants. Le propriétaire (registered_user) pourra uploader et associer des images à la propriété mise en location.
> * id_image:integer
> * name_image:string
> * url_image:string
> * id_rented_place (foreign_key)

### Module/Gem de payment : Stripe ou Devise
A étudier.

## 
## Création des controllers


## 
## Tester l'app : https://home-lidays.herokuapp.com/