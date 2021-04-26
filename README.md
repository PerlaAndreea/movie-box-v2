# Movie Box
## Movie Rating & Review App
I built a movie rating and review application with users, movies, reviews using ruby on rails and gem files such as simple_form, devise, paperclip and bootstrap.

For the development environment I used AWS Cloud9.

The application has a restful API with get and post routes for creating, editing and viewing movies and reviews.


## Available endpoints so far
### Users router: /users-api
                        new_user_session GET    /users/sign_in(.:format) -> devise/sessions#new
                            user_session POST   /users/sign_in(.:format) -> devise/sessions#create
                    destroy_user_session DELETE /users/sign_out(.:format) -> devise/sessions#destroy
                       new_user_password GET    /users/password/new(.:format) -> devise/passwords#new
                      edit_user_password GET    /users/password/edit(.:format) -> devise/passwords#edit
                           user_password PATCH  /users/password(.:format) -> devise/passwords#update
                                         PUT    /users/password(.:format) -> devise/passwords#update
                                         POST   /users/password(.:format) -> devise/passwords#create
                cancel_user_registration GET    /users/cancel(.:format) -> devise/registrations#cancel
                   new_user_registration GET    /users/sign_up(.:format) -> devise/registrations#new
                  edit_user_registration GET    /users/edit(.:format) -> devise/registrations#edit
                       user_registration PATCH  /users(.:format) -> devise/registrations#update
                                         PUT    /users(.:format) -> devise/registrations#update
                                         DELETE /users(.:format) -> devise/registrations#destroy
                                         POST   /users(.:format) -> devise/registrations#create
### Movies router: /movies-api
                           movie_reviews GET    /movies/:movie_id/reviews(.:format) -> reviews#index
                                         POST   /movies/:movie_id/reviews(.:format) -> reviews#create
                        new_movie_review GET    /movies/:movie_id/reviews/new(.:format) -> reviews#new
                       edit_movie_review GET    /movies/:movie_id/reviews/:id/edit(.:format) -> reviews#edit
                            movie_review GET    /movies/:movie_id/reviews/:id(.:format) -> reviews#show
                                         PATCH  /movies/:movie_id/reviews/:id(.:format) -> reviews#update
                                         PUT    /movies/:movie_id/reviews/:id(.:format) -> reviews#update
                                         DELETE /movies/:movie_id/reviews/:id(.:format) -> reviews#destroy
                                  movies GET    /movies(.:format) -> movies#index
                                         POST   /movies(.:format) -> movies#create
                               new_movie GET    /movies/new(.:format) -> movies#new
                              edit_movie GET    /movies/:id/edit(.:format) -> movies#edit
                                   movie GET    /movies/:id(.:format) -> movies#show
                                         PATCH  /movies/:id(.:format) -> movies#update
                                         PUT    /movies/:id(.:format) -> movies#update
                                         DELETE /movies/:id(.:format) -> movies#destroy
## App presentation
![alt text]()
