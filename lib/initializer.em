Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.session.cookie'
    before: 'ember-auth-load'

    initialize: (container, app) ->
      app.register 'authSession:cookie', Em.Auth.CookieAuthSession, \
      { singleton: true }
      app.inject 'authSession:cookie', 'auth', 'auth:main'
