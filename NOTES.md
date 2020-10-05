##RESTFUL ROUTES

HTTP VERB | ROUTE                | ACTION
----------|----------------------|----------
GET       | /CHARACTERS          | INDEX     - SHOWS THE CHARACTERS INDEX
GET       | /STORIES             | INDEX     - SHOWS THE STORIES INDEX
GET       | /CHARACTERS/:ID      | SHOW      - SHOWS THE CHARACTER
GET       | /STORIES/:ID         | SHOW      - SHOWS THE CHARACTER
GET       | /CHARACTERS/NEW      | NEW       - SHOW THE NEW FORM
GET       | /STORIES/NEW         | NEW       - SHOWS THE NEW FORM
GET       | /CHARACTERS/:ID/EDIT | EDIT      - SHOWS THE EDIT FORM
GET       | /STORIES/:ID/EDIT    | EDIT      - SHOWS THE EDIT FORM
----------|----------------------|-----------
POST      | /CHARACTERS          | CREATE
POST      | /STORIES             | CREATE
DELETE    | /CHARACTERS/:ID      | DELETE
DELETE    | /STORIES/:ID         | DELETE
----------|----------------------|-----------
PATCH     | /CHARACTERS/:ID      | EDIT
PATCH     | /STORIES/:ID         | EDIT

##MVC

###MODEL
-this is the logic
-it talks to the controller
-inherits from ActiveRecord
-talks to the database
-remember this is the kitchen, this is where everything is made

###VIEW
-responsible for what the user sees
-gets info from the user
-remember this is the person ordering, this who needs to see what comes from the kitchen

###CONTROLLER
-this is the go between
-holds all of the basic functions
-remember its the waiter, it goes between the kitchen and the person ordering
