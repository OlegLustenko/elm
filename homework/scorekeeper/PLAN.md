# Planing Basketball Scorekeeper App

## Model

TODO: Model's shape

```elm
Model = {
  players: List Player,
  playerName: String, -- input player name
  playerId: Maybe Int, -- if player in edit mode we 
  plays: List Play
}
```

TODO: Player Shape

```elm
Player = {
  id: Int,
  name: String,
  points: Int
}
```

TODO: Play Shape

```elm
Play = {
  id: Int,
  playerId: Int,
  name: String,
  points: Int
}
```

TODO: Initial Model

## Update

What can be done in our app ?

* Edit
* Score
* Input
* Save
* Cansel
* DeletePlayer

TODO: Create Message Union Type

TODO: create update function(s)

## View

What are the Logical Section/Groupings of our UI? 

* main view(outermost function)
  * player section
    * player list header
    * player list
      * player
    * point total
  * player form
  * play section
    * play list header
    * play list
      * play

TODO: Create functions for each of the above
