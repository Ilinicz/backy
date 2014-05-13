class Backy.Views.ArticleItem extends Backbone.View

  template: JST['articles/article_item']

  tagName: 'li'

  render: ->
    $(@el).html(@template(article: @model))
    @