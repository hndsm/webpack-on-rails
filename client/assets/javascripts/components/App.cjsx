React        = require("react");
RouteHandler = require('react-router').RouteHandler;
FluxMixin    = require('fluxxor').FluxMixin(React);
StateTree    = require('StateTree');
ListenTo     = require('mixins/ListenTo');

module.exports = React.createClass
  mixins: [FluxMixin, ListenTo(StateTree)]

  render: ->
    <div>
      <RouteHandler />
    </div>
