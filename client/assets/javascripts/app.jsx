require('app.css')

var React   = require('react');
var Router  = require('react-router');
var routes  = require('routes');

var Fluxxor = require('fluxxor');
var actions = require('actions');
var flux    = new Fluxxor.Flux({}, actions);

Router.run(routes, Router.HistoryLocation, function(Handler) {
  React.render(<Handler flux={flux} />, document.getElementById('app'));
});
