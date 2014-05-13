class Backy.Views.ArticleNew extends Backbone.View

  template: JST['articles/article_new']

  events: 'submit #new-article': 'createArticle'

  render: ->
    $(@el).html(@template())
    @

  createArticle: (event) ->
    event.preventDefault()
    attributes = 
      title: $('#new-article-title').val()
      body:   $('#new-article-body').val()

    @collection.create attributes,
      wait: true
      success: (model, response) ->
        console.log model.get('id')
        Backbone.history.navigate("articles/#{model.get('id')}", true)
