Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth-session-cookie'
    after: 'ember-auth'

    initialize: (container, app) ->
      app.register 'authSession:cookie', Em.Auth.CookieAuthSession
