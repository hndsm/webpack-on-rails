module.exports = ->
  tree = arguments[0]

  getInitialState: ->
    baobab: tree

  componentDidMount: ->
    if @isMounted()
      tree.on 'update', => @setState({ baobab: tree })

  componentWillUnmount: ->
    unless @isMounted()
      tree.off 'update'
