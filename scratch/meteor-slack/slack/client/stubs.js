Meteor.methods({
  newMessage: function (message) {
  	message.timestamp = Date.now();
    message.user = Meteor.userId();
    Messages.insert(message);
  }
});

Template.messages.onCreated(function(){
	var self = this;
	self.autorun(function() {
		self.subscribe('messages', Session.get('channel'));
	});
});