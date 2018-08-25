var {con} = require('../db');

module.exports = {
  messages: {
    get: function (cb) { // a function which produces all the messages
      con.query('SELECT * FROM messages', (err, rows) => {
        if (err) { throw err; }
        cb(rows);
      });
    }, 
    post: function (data, cb) { // a function which can be used to insert a message into the database
      // Data = {username: 'Sponge Bob', textMessage: "I'm a fry cook", chatroom: 'Krusty Krab'}
      // formatted = ['Sponge Bob', "I'm a fry cook", 'Krusty Krab']
      var formattedData = [data.username, data.textMessage, data.chatroom];
      con.query('INSERT INTO messages (username, textMessage, chatroom) VALUE ?', [formattedData], (err, rows) => {
        if (err) { throw err; }
        cb();
      });

    }
  },

  users: {
    // Ditto as above.
    get: function (cb) { // a function which produces all the messages
      con.query('SELECT * FROM users', (err, rows) => {
        if (err) { throw err; }
        cb(rows);
      });
    }, 
    post: function (data, cb) { // a function which can be used to insert a message into the database
      // Data = {username: 'Sponge Bob', textMessage: "I'm a fry cook", chatroom: 'Krusty Krab'}
      // formatted = ['Sponge Bob', "I'm a fry cook", 'Krusty Krab']
      var formattedData = [data.username];
      con.query('INSERT INTO users (username) VALUE ?', [formattedData], (err, rows) => {
        if (err) { throw err; }
        cb();
      });
    }
  }
};

