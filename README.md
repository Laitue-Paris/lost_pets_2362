# Read me

On veut construire une mini app où des animaux sont retrouvés.

Les user-story sont :
As a user I can see all found pets
As a user I can see details about one found pet (when and where it was found)
As a user I can add a pet I found
As a user I can update a pet
As a user I can delete a pet

Reboot : le CRUD en 7 étapes

# | HTTP verb | Controller action | ActiveRecord method
1 | get | index | all
2 | get | show | find
3 | get | new | new
4 | post | create | create
5 | get | edit | find
6 | patch /put | update | update
7 | delete | destroy | destroy

on peut faire resources :controller

CRUD | HTTP verb
Create    | post
Read    | get
Update    | patch
Delete    | delete


MVC
Model
View
Controller

il est temps de creer l'app :

rails ... lost_pets --skip-active-storage --skip-action-mailer --skip-ci

cd lost_pets

git add .
git commit -m "rails new"

gh repo create --public --source=.
git push origin master


1 - Model
Je veux un modèle Pet qui a :
- name => type : string
- address où il a été trouvé (où il a été trouvé)  => type : string
- species => type : string
- found_on date de quand il a été trouvé => type : date

Les validations :
On veut que lors de la creation, le nom de l'animal soit obligatoire.
On veut que les animaux soit inclus dans la liste :

2 - les users stories, une par une.
Rappel :
As a user I can see all found pets (optionnel, rajouter la methode "found_days_ago" au modèle pour qu'on ait : "Snoopy - Found 3 days ago"
As a user I can see details about one found pet (when and where it was found)
As a user I can add a pet I found => dans le formulaire on veut selectionner nos "species" dans la liste des "species"
As a user I can update a pet => dans le formulaire on veut selectionner nos "species" dans la liste des "species"
As a user I can delete a pet

3 - Librairies :
Bootstrap :
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">

Simple form
gem "simple_form"
puis :
bundle install
rails generate simple_form:install --bootstrap
