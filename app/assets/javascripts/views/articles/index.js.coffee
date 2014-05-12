class Backy.Views.ArticlesIndex extends Backbone.View

  template: JST['articles/index']

  initialize: ->
    @collection.on('reset', @render, @)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendArticle)
    @

  appendArticle: (article) =>
    view = new Backy.Views.ArticleItem(model: article, true)
    @$('#articleslist').prepend(view.render().el)
