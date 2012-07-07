class window.List extends Monarch.Record
  @extended(this)

  @columns
    name: 'string'

  @hasMany('items', orderBy: 'order')

