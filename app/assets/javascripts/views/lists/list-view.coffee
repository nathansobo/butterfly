class window.ListView extends View
  @content: (list) ->
    @div class: 'list', =>
      @input value: list.name(), outlet: 'name', change: 'updateName'
      @ol outlet: 'items'
      @input outlet: 'newItem', keyup: 'handleNewItemKeyup'

  initialize: (@list) ->
    @redrawItems()
    @list.items().onInsert (item) =>
      @redrawItems()

  redrawItems: ->
    @items.empty()
    @list.items().each (item) =>
      @items.append $$ -> @li item.text()

  updateName: ->
    @list.update(name: @name.val())

  handleNewItemKeyup: (e) ->
    if (e.originalEvent.keyIdentifier == 'Enter')
      @list.items().create
        text: @newItem.val()
      @newItem.val('')
