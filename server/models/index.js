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
      con.query(`INSERT INTO messages (username, message, chatroom) VALUE ("${data.username}", "${data.message}", "${data.chatroom}")`, (err, rows) => {
        if (err) { throw err; }
        cb();
      });

    }
  },

  users: {
    // Ditto as above.
    get: function (cb) { // a function which produces all the users
      con.query('SELECT * FROM usernames', (err, rows) => {
        if (err) { throw err; }
        cb(rows);
      });
    }, 
    post: function (data, cb) { // a function which can be used to insert a user into the database
      con.query(`INSERT INTO usernames (username) VALUE ("${data.username}")`, (err, rows) => {
        if (err) { throw err; }
        cb();
      });
    }
  }
};

