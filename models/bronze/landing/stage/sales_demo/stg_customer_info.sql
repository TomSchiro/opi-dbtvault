SELECT
{{get_column_name('NETFLIX_BEST_MOVIE_BY_YEAR')}}
 FROM {{source('netflix','NETFLIX_BEST_MOVIE_BY_YEAR')}}
