React       = require("react");
FluxMixin   = require('fluxxor').FluxMixin(React);
Header      = require('components/Header');
StateTree   = require('StateTree');
ListElement = require('components/ListElement');

module.exports = React.createClass
  mixins: [StateTree.mixin]
  cursor: ['list']

  render: ->
    elements = this.cursor.get().map (element) ->
      <ListElement key={element.id} data={element} />

    <div>
      <Header />
      <ul>
        {elements}
      </ul>
    </div>
