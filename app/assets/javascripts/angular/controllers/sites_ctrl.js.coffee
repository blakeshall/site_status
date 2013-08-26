App.controller 'SitesCtrl', ['$scope', '$timeout', 'Site', ($scope, $timeout, Site) ->
  $scope.sites = Site.query(->
    $timeout tick, 60000
  )

  tick = ->
    $scope.sites = Site.query(->
      $timeout tick, 60000
    )
]
