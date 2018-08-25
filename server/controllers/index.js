var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) { // a function which handles a get request for all messages
      models.messages.get(function(data) {
        res = JSON.parse(data);
      });
    },
    post: function (req, res) { // a function which handles posting a message to the database
      var data = req.body;
      models.messages.post(data, function() {
        console.log('Data posted!');
      });
    } 
  },

  users: {
    // Ditto as above
    get: function (req, res) { 
      models.users.get(function(data) {
        res = JSON.parse(data);
      });
    },
    post: function (req, res) { 
      var data = res.body;
      models.users.post(data, function() {
        console.log('Data posted!');
      });
    }
  }
};

