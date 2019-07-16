Requirements
[x] Must render at least one index page (index resource - 'list of things') via jQuery and an JSON Backend. For example, in a blog domain with users and posts, you might display the index of the users posts on the users show page, fetching the posts via an AJAX GET request, with the backend rendering the posts in JSON format, and then appending the posts to the page.
-- Movie index is able to click and show a list of Showings

[x] Must render at least one show page (show resource - 'one specific thing') via jQuery and an JSON Backend. For example, in the blog domain, you might allow a user to sift through the posts by clicking a 'Next' button on the posts show page, with the next post being fetched and rendered via JQuery/AJAX.

-- Movie index page is able to display movie description with a click.

[X] The rails API must reveal at least one has-many relationship in the JSON that is then rendered to the page. For example, if each of those posts has many comments, you could render those comments as well on that show page.
-- The movie index listing Showings is a has many relationship (movies have many showings)

[x] Must use your Rails API and a form to create a resource and render the response without a page refresh. For example, a user might be able to add a comment to a post, and submitted via an AJAX POST request, with the response being the new object in JSON and then appending that new comment to the DOM using JavaScript (ES6 Template Literals can help out a lot with this).
-- able to create a new showing while in the theater/showing index

[x] Must translate the JSON responses into Javascript Model Objects. The Model Objects must have at least one method on the prototype. Formatters work really well for this. Borrowing from the previous example, instead of plainly taking the JSON response of the newly created comment and appending it to the DOM, you would create a Comment prototype object and add a function to that prototype to perhaps concatenate (format) the comments authors first and last name. You would then use the object to append the comment information to the DOM.
-- Indirectly completed through firsts 3 tasks.

[] Your application should conform to Nitro's Ruby linting conventions. This should already be included in your original rails project repo. Running rubocop from your application's root should return a no offenses detected message.

[] Your application should contain at least 4 Model test files (you should have 2 already), at least two request specs, and at least 1 system test. But the more, the better :). Each file should attempt to provide coverage over a number of public methods or endpoints in your application. Review the Testing section of the curriculum for some tips on best test practices. FactoryBot will be need to be added to your project to use test factories if it is not already. Capybara and poltergiest may also need to be added to your project to support your system tests. Utilize your instructor, peers, and other Nitro Developers for resources and ideas on what your application should test.
