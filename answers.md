# Q0: Why is this error being thrown?
This NameError is being thrown because we have not yet created a model named Pokemon.  HomeController is expecting Pokemon, but we have not created it yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In home_controller.rb, an array "trainerless_pokemon" is defined such that it consists of all pokemon in the database who do not belong to a trainer (trainer:nil).  The variable @pokemon takes a random Pokemon from this trainerless_pokemon array using the method sample.

Random:  use .sample
Common factor:  all have trainer:nil

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This line creates a button which, upon clicking, follows the capture route.  This button's method is a PATCH, and it sends the id of the @pokemon, which was the randomly generated trainerless pokemon from index, to the capture method.

# Question 3: What would you name your own Pokemon?
Oski

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed trainer_url(id:@damaged_pokemon.trailer) into the redirect_to.  It is not a path, but a path is not necessary abecause the trainer_url with specified id is already routed to trainers show view in routes.rb

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
When a validation fails, an error for the @pokemon that a save was attempted on is created.  This line finds the created error and displays it on the form.

# Give us feedback on the project and decal below!
Syntax is very annoying :(

# Extra credit: Link your Heroku deployed app
Heroku didn't work for me D:
