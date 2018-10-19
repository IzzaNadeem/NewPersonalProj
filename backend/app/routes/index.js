const commandRoutes = require('./command_routes');
module.exports = function(app, db) {
 commandRoutes(app, db);
  // Other route groups could go here, in the future
};