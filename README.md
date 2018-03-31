# API DUMMY
A simple REST API with dummy data, for practicing frontend technologies.

## Install

Download

* `git clone git@github.com:AlexAvlonitis/api-dummy.git && cd api-dummy`

**Option 1 ( If you have ruby dependecies installed )**

* `bundle install`
* `rails db:setup`
* `puma`
* Go to http://localhost:3000

**Option 2 ( If you don't want any ruby dependecies, requires docker )**

* `docker build . -t api-dummy`
* `docker run -it -p 3000:3000 --rm api-dummy`
* Go to http://localhost:3000

## Usage

There are 2 enpoints

* http://localhost:3000/api/animals
* http://localhost:3000/api/people

**List list of REST actions**

|             | Action | Endpoint                   | Parameters                          |
|-------------|--------|----------------------------|-------------------------------------|
| api_animals | GET    | /api/animals(.:format)     |                                     |
|             | POST   | /api/animals(.:format)     | name                                |
| api_animal  | GET    | /api/animals/:id(.:format) |                                     |
|             | PATCH  | /api/animals/:id(.:format) | name                                |
|             | PUT    | /api/animals/:id(.:format) | name                                |
|             | DELETE | /api/animals/:id(.:format) |                                     |
| api_people  | GET    | /api/people(.:format)      |                                     |
|             | POST   | /api/people(.:format)      | first_name, last_name, title        |
| api_person  | GET    | /api/people/:id(.:format)  |                                     |
|             | PATCH  | /api/people/:id(.:format)  | first_name, last_name, title        |
|             | PUT    | /api/people/:id(.:format)  | first_name, last_name, title        |
|             | DELETE | /api/people/:id(.:format)  |                                     |
