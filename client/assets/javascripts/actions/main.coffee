StateTree = require('StateTree');

module.exports =
  toggle: (id) ->
    StateTree.select(['list', {id: id}]).select('isActive').apply (isActive) -> !isActive
    StateTree.commit()