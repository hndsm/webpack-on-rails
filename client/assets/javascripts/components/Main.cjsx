React     = require("react");
FluxMixin = require('fluxxor').FluxMixin(React);
Header    = require('components/Header');
StateTree = require('StateTree');

module.exports = React.createClass
  mixins: [FluxMixin, StateTree.mixin],
  cursor: ['someVar'],

  render: ->
    <div>
      <Header />
      <div>
        Main section with a variable: {this.cursor.get()}
      </div>
    </div>
