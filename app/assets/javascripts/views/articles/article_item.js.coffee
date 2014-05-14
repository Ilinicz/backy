class Backy.Views.ArticleItem extends Backbone.View

  template: JST['articles/article_item']

  tagName: 'li'

  events: 'click button.delete-article': 'deleteArticle'

  render: ->
    $(@el).html(@template(article: @model))
    @

  deleteArticle: (event) ->
    event.preventDefault
    @model.destroy
      wait: true
      success: =>
        $(@el).fadeOut()