var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) { // a function which handles a get request for all messages
      models.messages.get(function(data) {
        res.setHeader('Access-Control-Allow-Origin', '*');
        res.send(data);
      });
    },
    post: function (req, res) { // a function which handles posting a message to the database
      var data = req.body;
      models.messages.post(data, function() {
        res.send('Data posted!');
      });
    },
    options: function (req, res) { // a function which handles posting a message to the database
      console.log('Hello');
      res.setHeader('Access-Control-Allow-Origin', '*');
      res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization, Content-Length, X-Requested-With');
      res.send();
    } 
  },

  users: {
    // Ditto as above
    get: function (req, res) { 
      models.users.get(function(data) {
        res.setHeader('Access-Control-Allow-Origin', '*');
        res.send(data);
      });
    },
    post: function (req, res) { 
      var data = req.body;
      models.users.post(data, function() {
        // res.setHeader('Access-Control-Allow-Origin', '*');
        res.send('User created!');
      });
    }
  }
};

