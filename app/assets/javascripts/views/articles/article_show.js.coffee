class Backy.Views.ArticleShow extends Backbone.View

  template: JST['articles/article_show']

  render: ->
    $(@el).html(@template(article: @model))
    @