Baobab          = require('baobab');
PureRenderMixin = require('react/addons').addons.PureRenderMixin;

module.exports = new Baobab({
  headerName: 'Example App'
  list: [
    { id: 1, title: 'one',   isActive: true }
    { id: 2, title: 'two',   isActive: false }
    { id: 3, title: 'three', isActive: true }
  ]
  someVar: 'something'
},
  autoCommit: false
  mixins: [ PureRenderMixin ]
  shiftReferences: true
)