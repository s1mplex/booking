@services.factory("ShowService", ($resource) ->
  factory = {}

  factory.queryShows = (movieId) ->
    shows = $resource("/api/movies/#{movieId}/shows", {},
      query:
        method: "GET"
        isArray: true
    ).query(->
      angular.forEach shows, (show) ->
        show.date = new Date(show.date).toString("d-MMM-yyyy HH:mm")
        return
    )
    shows
  factory
)