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
- [ ] The "through" part of the has_many through includes at least one user
    submittable attribute (e.g. ingredient#quantity)
- [ ] Includes reasonable validations for simple model objects
- [ ] Includes a class level ActiveRecord scope method
- [ ] Includes signup (e.g. Devise)
- [/] Includes login (e.g. Devise)
- Sessions log in set up to accept a username
- [/] Includes logout (e.g. Devise)
- Sessions log out set up to redirect to Welcome and destroy session
- [x] Includes nested resource show or index (e.g. users/2/recipes)
- Showings exist nested inside Theaters, '/theaters/1/showings'
- [/] Includes nested resource "new" form (recipes/1/ingredients/new)
- theaters/1/showings/new will pull up a page with movie/theater/screen drop down options but needs to be worked over with proper routes/html
- [ ] Includes form display of validation errors
power/heroines assessment
- [ ] Includes Unit tests for at least 2 of your models
- [ ] Conforms to Nitro Ruby linting rules (running rubocop returns 0 offenses)
- [ ] Includes a README.md with an application description and installation guide

Confirm:

- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate


If you've added any additional functionality to your application that you'd like to demonstrate, please describe it below:


Notes:
Baller
Ball is life.
date time picker (html?)

Screen controller for has many/belongs to
Showing belongs to a screen, and screens have many showings, but only screens that belong to that theater. Theater has many screens but screen only belongs to 1 theater.

User contoller, name/password, has_secure -- for login/logout over sessions for logging, but can keep sessions to keep them locked in.
