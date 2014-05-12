Backbone.View::close = ->
  @beforeClose()  if @beforeClose
  @remove()
  @unbind()

class Backy.Routers.Articles extends Backbone.Router

  routes:
    ''                   : 'index'
    'articles/new'       : 'add'
    'articles/:id'       : 'show'
    'articles/:id/edit'  : 'edit'

  initialize: ->
    @collection = new Backy.Collections.Articles()
    @collection.reset($('#all-articles').data('articles'))

  index: ->
    view = new Backy.Views.ArticlesIndex(collection: @collection)
    @showView('#content', view)

  show: (id) ->
    view = new Backy.Views.ArticleShow(model: @collection.get(id))
    @showView('#content', view)

  showView: (selector, view) ->
    @currentView.close() if @currentView
    $(selector).html view.render().el
    @currentView = view
    view
    
