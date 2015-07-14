Pickups = new Mongo.Collection("pickups");

if (Meteor.isClient) {
  // counter starts at 0
  Session.setDefault('counter', 0);
  Session.setDefault('currentLocation', []);

  Template.users.helpers({
    users: function(){
      return Meteor.users.find();
    }
  });

  Template.requestedPickups.helpers({
    pickups: function(){
      return Pickups.find();
    }
    
  })

  Template.myLocation.helpers({
    location: function(){
      function getLocation(location){
         console.log(location.coords.latitude + ", " + location.coords.longitude);
         currentLocation = [location.coords.latitude, location.coords.longitude];
         Session.set('currentLocation', currentLocation);
      };
      navigator.geolocation.getCurrentPosition(getLocation);
      return Session.get('currentLocation');
    }
  });
  Template.hello.helpers({
    counter: function () {
      return Session.get('counter');
    }
  });

  Template.requestedPickups.events({
    "submit .new-pickup": function(event){
      var name = event.target.user.value;
      var note = event.target.note.value;
      var myLocation = Session.get('currentLocation');

      Pickups.insert({
        name: name,
        note: note,
        location: myLocation
      })
    }
  });

  Template.myLocation.events({
    'click #map': function(){
      Session.set('currentLocation');
    }
  })
  Template.hello.events({
    'click button': function () {
      // increment the counter when button is clicked
      Session.set('counter', Session.get('counter') + 5);
    }
  });
  Accounts.ui.config({
    passwordSignupFields: "USERNAME_ONLY"
  })
}

if (Meteor.isServer) {
  Meteor.startup(function () {
    // code to run on server at startup
  });
}
