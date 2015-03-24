React     = require("react");
FluxMixin = require('fluxxor').FluxMixin(React);
StateTree = require('StateTree');

module.exports = React.createClass
  mixins: [FluxMixin]

  getDefaultProps: ->
    message: 'Nothing Found'

  render: ->
    <p className="nothing-found">{this.props.message}} </p>
