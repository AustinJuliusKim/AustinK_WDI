if (Meteor.isClient) {
  Template.leaderboard.events({
    'click .player': function(){
      var playerId = this._id;
      Session.set('selectedPlayer', playerId);
    }
  });
  Template.leaderboard.helpers({
    'player': function(){
      return PlayersList.find()
      },
    'selectedClass': function(){
      var playerId = this._id
      var selectedPlayer = Session.get('selectedPlayer');
      if (playerId == selectedPlayer){ 
        return "selected"
      }
    }
  })
}

if (Meteor.isServer) {
  Meteor.startup(function () {
    console.log("hello server")
  });
}

// Create a new collection named Players
PlayersList = new Mongo.Collection('players');

console.log("hello world")