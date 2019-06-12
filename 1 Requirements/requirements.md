Add notes below each checkbox with how your application has met the requirement

Requirements:

 Uses Ruby on Rails
- [x] Includes at least one has_many relationship (e.g. User has_many Recipes)
- Theaters has many Showings

- [x] Includes at least one belongs_to relationship (e.g. Post belongs_to User)
- Showings belongs to Theater

- [x] Includes at least one has_many through relationship (e.g. Recipe has_many
    Items through Ingredients)
- Theater has many movies through showings

- [x] The "through" part of the has_many through includes at least one user
    submittable attribute (e.g. ingredient#quantity)
    -- User is able to pick a time for a showing, where a movie has a theater through the showing but it needs work.

- [x] Includes reasonable validations for simple model objects
  Showings ensure that it has a time, Screen, Movie, and theater (its a drop down option so just presence should be fine). User checks that it has a username with a minimum length of 5, uniqueness to avoid duplicate users, and password is present.

- [ ] Includes a class level ActiveRecord scope method

- [x] Includes signup (e.g. Devise)
  Sign up exists in Users Controller

- [x] Includes login (e.g. Devise)
- Sessions log in set up to accept a username

- [x] Includes logout (e.g. Devise)
- Sessions log out set up to redirect to Welcome and destroy session

- [x] Includes nested resource show or index (e.g. users/2/recipes)
- Showings exist nested inside Theaters, '/theaters/1/showings'

- [x] Includes nested resource "new" form (recipes/1/ingredients/new)
- theaters/1/showings/new will pull up a page with movie/theater/screen drop down options but needs to be worked over with proper routes/html

- [x] Includes form display of validation errors
Errors displayed on Movies, Showings, Users.

- [x] Includes Unit tests for at least 2 of your models
 - two test models are set up but unable to run

- [/] Conforms to Nitro Ruby linting rules (running rubocop returns 0 offenses)

- [X] Includes a README.md with an application description and installation guide

Confirm:

- [x] The application is pretty DRY

- [x] Limited logic in controllers

- [ ] Views use helper methods if appropriate

- [x] Views use partials if appropriate


If you've added any additional functionality to your application that you'd like to demonstrate, please describe it below:


Notes:

I would like to add a search bar, with an Imax filter in long term goal
