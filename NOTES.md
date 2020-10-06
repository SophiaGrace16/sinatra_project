##RESTFUL ROUTES

HTTP VERB | ROUTE                | ACTION
----------|----------------------|----------
GET       | /CHARACTERS  x       | INDEX     - SHOWS THE CHARACTERS INDEX
GET       | /STORIES             | INDEX     - SHOWS THE STORIES INDEX
GET       | /CHARACTERS/:ID  x   | SHOW      - SHOWS THE CHARACTER
GET       | /STORIES/:ID         | SHOW      - SHOWS THE CHARACTER
GET       | /CHARACTERS/NEW   x  | NEW       - SHOW THE NEW FORM
GET       | /STORIES/NEW         | NEW       - SHOWS THE NEW FORM
GET       | /CHARACTERS/:ID/EDITx| EDIT      - SHOWS THE EDIT FORM
GET       | /STORIES/:ID/EDIT    | EDIT      - SHOWS THE EDIT FORM
----------|----------------------|-----------
POST      | /CHARACTERS   x      | CREATE
POST      | /STORIES             | CREATE
DELETE    | /CHARACTERS/:ID x    | DELETE
DELETE    | /STORIES/:ID         | DELETE
----------|----------------------|-----------
PATCH     | /CHARACTERS/:ID   x  | EDIT
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

<footer class="branding">
        <% if logged_in? %>
          <h4>Welcome <%= current_user.username %></h4>
          <h4><a href="/logout">Log Out</a></h4>
        <% else %>
          <h4><a href="/login">Log In</a></h4>
        <% end %>
        <small>&copy; 2020 <strong>Sophia White</strong></small>
  </footer>

  <!DOCTYPE html>
<html lang="en">

<html>
<style>
.dropbtn {
  background-color: #990000;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: white;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 200px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 12px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #990000;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #ff3e00;}
</style>

<h1>Dungeons & Dragons Database</h1>

<p> Welcome to the Dungeons & Dragons Database</p>

<body>

<h4>Choose.</h4>
<h5>Are you a player or a dungeon master?</h5>

<div class="dropdown">
  <button class="dropbtn">Dropdown</button>
  <div class="dropdown-content">
    <a href="#">Dungeon Master</a>
    <a href="#">Player</a>
  </div>
</div>

</body>
</html>


<!-- This is the homepage -->
