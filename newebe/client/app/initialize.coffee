# App Namespace
# Change `CozyApp` to your app's name
@Newebe ?= {}
Newebe.routers ?= {}
Newebe.views ?= {}
Newebe.models ?= {}
Newebe.collections ?= {}


$ ->
    # Load App Helpers
    require '../lib/app_helpers'
    AppRouter = require 'routers/app_router'
    AppView = require 'views/app_view'


    # Initialize App
    Newebe.views.appView = new AppView()
    Newebe.routers.appRouter = new AppRouter Newebe.views.appView
    
    # Initialize Backbone History
    Backbone.history.start()
    if window.location.hash is ''
        Newebe.routers.appRouter.navigate '', trigger: true
