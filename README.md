# README

This blog was created as a way to show my appreciation for a fantastic community of music lovers and DJs. Crossfader is a free iPhone app that is meant to give the user the sense of being DJ, minus the the expensive equipment. The UI for this blog was meant to replicate the app it self, e.g. color schemes and fonts. However, the UX is more a traditional blog design. The vast majority of the app was written in Ruby, as well as, HTML5 and JavaScript (ES6)/jQuery . The styling uses a combination of SASS and CSS3. Everything is held together with Ruby on Rails.


Features:

* Bootstrap was in various ways throughout the blog.

* With the use of the paperclip gem, the user has the ability to upload images (either for their post or avatar).

* User uploaded images are stored on AWS S3 (via separate buckets).

* The devise gem serves as the login solution for users. Users avatars are also tied to it as well. Once a user has signed-up (signed-in) he or she has CRUD abilities over the content on each page.

* All images and logos (no provided via user upload) were created in photoshop.

* The web app itself is stored on Heroku. It also utilizes the Postgres database provided by Heroku.
