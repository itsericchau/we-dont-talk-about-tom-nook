Try the app! https://we-dont-talk-about-tom-nook-production.up.railway.app/

# Notes: Database currently does not work so login and favourites/wishlist are currently unavailable.

# We Don't Talk About Tom Nook App
This project is an organiser and tracker for those who like to organise your item collection in Animal Crossing: New Horizons
![Homepage](https://imgur.com/XdS9tF2.png)

## My plan / Approach
- Make a database with tables for users and user's custom selection of items.
- User can select a wishlist of items as well as a favourited items list with more information and detail.
- Using ruby, sinatra, pg gem, httparty gem, postgresql we combine these utilities to make an app

![Arts Page](https://imgur.com/FhfvUY6.png) 
![Songs Page](https://imgur.com/DiF14e5.png)

- When user signs up, they can now log in and add things to their collection.
- This will be unique to each user.

### Sign up Page
![Sign up](https://imgur.com/S2eYCGA.png)
### Log in Page
![Log in](https://imgur.com/hOFygeu.png)

## Cool tech that I used
- Ruby language and Ruby gems
- Httparty for API handling
- PG for database handling to run through postgresql
- Heroku App hosting website and database

![Wish list](https://imgur.com/AzHclXp.png)
## Lessons you learnt
- Server talking to server can be slow at times
- API keys are not always consistent with keys
- Have more than one method to identify items in order for redundancy
- Createing, renaming, updating, deleteing on Heroku
- How to pass data to and from ruby to html
- How to successfully route and use queries to navigate the webpages
- Know how to check if a user is logged in

## Features to add in the future
- Fossils page
- Furniture pages
- Edit username & password editing
- Javascript DOM manipulation
- Able to favourite on all pages