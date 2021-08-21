# README
URL shortener for technical task

* Admin panel: http://localhost:3000/admin/urls login: admin password: admin

* You can be redirected by calling this url: http://localhost:3000/s/YOUR_SLUG. 

* API Documentation:

* GET http://localhost:3000/urls?slug=ggl Returns JSON containing clicked counter of a specific slug

* POST http://localhost:3000/urls url: string; Returns JSON containg newly created slug

* DELETE http://localhost:3000/urls/delete Body: slug: string; Deleted specific url by slug

* UPDATE http://localhost:3000/urls/update Body: password: string, update_slug: string; Updates specific url by slug

* Database: sqlite

* Gems used: administrate

Based on this article https://www.zauberware.com/en/articles/2019/create-a-url-shortener-with-ruby-on-rails