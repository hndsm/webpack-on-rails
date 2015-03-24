React     = require("react");
FluxMixin = require('fluxxor').FluxMixin(React);
Header    = require('components/Header');
StateTree = require('StateTree');

module.exports = React.createClass
  mixins: [FluxMixin]

  render: ->
    styles =
      textDecoration: ( 'line-through' if !@props.data.isActive )

    <li style={styles} onClick={@toggleElement.bind(null, @props.data.id)}>{@props.data.title}</li>

  toggleElement: (id, event) ->
    @getFlux().actions
              .main
              .toggle(id);