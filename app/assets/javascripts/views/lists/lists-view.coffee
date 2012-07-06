class window.ListsView extends View
  @content: ->
    @div class: 'container', =>
      @header =>
        @h1 "Lists"
        @button "New List", click: 'createList'
      @ol class: 'lists', outlet: 'lists'

  initialize: ->
    $.ajax
      url: '/lists'
      dataType: 'json'
      success: (records) ->
        Monarch.Repository.update(records)

    List.onInsert (list) =>
      listView = new ListView(list)
      @lists.append(listView)

  createList: ->
    List.create()
