@controllers.controller( 'MoviesListingController',['$scope','$location', 'MovieService',  ($scope, $location, MovieService) ->

  $scope.movies = MovieService.query()
  $scope.viewShows = (movie) ->
    $location.path("/movies/#{movie.id}/shows")
])
