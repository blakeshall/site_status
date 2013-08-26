App.factory 'Site', ['$resource', ($resource) ->
  $resource '/api/sites/:id', id: '@id'
]
