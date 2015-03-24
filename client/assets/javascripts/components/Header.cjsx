React     = require("react");
Link      = require('react-router').Link;
StateTree = require('StateTree');

module.exports = React.createClass
  mixins: [StateTree.mixin]
  cursors:
    headerName: ['headerName']

  render: ->
    <div>
      <p>{this.cursors.headerName.get()}</p>
      <Link to="/list">List</Link>
    </div>
