

#### Identification of the problem you are trying to solve by building this particular marketplace app.

It's not easy to find a trustworthy baby sitter and it's not possible to know more information such as the quality of the service, feedback of the baby sitter etc. For babysitters as well it's very hard 
to find parents who are looking for the babysitting service. This Babysitter Booking app connects parents and babysitters. Any one interested can register as babysitter and parents can connect with this babysitter and make booking. 

This baby sitter app addresses following problems

 - Parents get only limited option to choose a babysitter
 - Can not see the review and ratings of babysitters.
 - It's not easy for new babysitters to enter in to the market.
 -  No service allows babysitters to connect with parents and vice versa.


#### Why is it a problem that needs solving?

Parents have hard time to find babysitter and never be confident about the babysitters and for the new babysitters it's very hard to enter the market and find customers. 

This application helps the parents to find a trustworthy baby sitter based on reviews and ratings and 
other informations and helps the babysitter to register easily and find more clients quickly.

#### Description of your marketplace app 
##### Purpose
The purpose of my marketplace app is to design a functional two-way marketplace that is easy to use for anyone to register as a babysitter and allows the user to book for a particular babysitter. To allow the babysitters an effective way to show case thier skills and for potentional users as a parent to be able browse by city and can book from the web-app.
##### Functionality and features

##### Visitors:

* Can view sign up for a new account as a user or a babysitter via a sign up form that takes information such as user name, email and password.
* Can view the websites current listings that are available for booking with the babysitter 
* Visitors Cannot make a booking without login to the website.
  
##### babysitter:

* Website allows user to signup as a babysitter.
* Once the babysitter sign up, they can complete their profile via a form. That takes the information such as first name, last name, country,city, available date,amount/hr and allows to upload their own image.
* They have their own profile page, where they can see their profile information and current booking details. 
* They can edit both personal details(email and password) and profile details.
* It also possible for the babysitter to set the status of bookings.(pending/accepted).
* Cannot make a booking.

##### User as a parent:

* Website allows the user to sign up.
* Can view all the available babysitters
* User can search for a babysitter based on a city.
* Once the user logged in, they can see full details of a particular babysitter.
* Allows the user to make a booking with a babysitter via a form, that takes information about the child and the date to which they want to make a booking.
* Once the user made booking,website shows booking confirmation notice and also displays the booking details.
* User can view their booking details in their profile page.
* From the profile page, user can Edit and Delete the booking.
* It is also possible to update their personal information such as email and password from the profile page.
* It is possible to view their current status of the booking they made.
  
* babysitter app will use Devise. Devise provides a full authentication package with views, controllers and routes to allow users to sign up, edit user profiles, reset passwords, etc. Devise can be used without the database authentication module with provides signup via email password.
##### Other Features:
* Authorisation
* Input validation.
* AWS Image hosting.

##### Sitemap
![site-map](/docs/site-map.png)
##### Screenshots
##### Target Audience

Parent - Parent who want a babysitter for their active children, can search for babysitters and make booking with a babysitter.
Babysitter - Can register as babysitter and can connect with parents and get bookings.

##### Tech stack 
* Ruby on Rails
* Ruby 2.5.1
* PostgreSQL
* Bootstrap
* HTML & CSS
* Heroku (deployment)
* AWS S3 (image uploading)
* Github
#### User stories 
![user-story](/docs/user_stories.png)
#### Wireframes for your app

#### An ERD for your app
![erd](/docs/erd.png)

#### Explain the different high-level components (abstractions) in your app
One of the high-level components in my application is Active-Record. Active-Record is a design pattern that uses the MVC (Model, View, Controller) to map the columns inside your table. Doing this provides us with ORM (Object Relational Mapping). Doing this allows us to access our SQL database (In our case PostgreSQL) without having to write SQL statements. Active-Record also allows us the ability to represent our models and their data, associations between our models, represent inheritance through related models and validate models before they get persisted to the database. These columns are accessed by methods are inferred inside the database schema.

#### Detail any third party services that your app will use

* Heroku: Heroku is a cloud application platform – a new way of building and deploying web apps. Best thing about Heroku is that we don’t have to pay for hosting basic web apps as Heroku has categorized them as free. Heroku applications work better with the PostgreSQL database system, so that i used postgresql in my rails app.Heroku's Git server handles application repository pushes from permitted users. 
  
All Heroku services are hosted on Amazon's EC2 cloud-computing platform

* AWS S3: AWS cloud S3 service is used for uploading and storing the images. It can speed up the uploading process. App allows the babysitter to upload image via form.

* PostgreSQL: This database is used for storing the data of the application. 
  

#### Describe your projects models in terms of the relationships (active record associations) they have with each other

Application has three models such as User, BabySitterRegistration and BookingDetail. 

User is a devise model which captures the signup information. BabySitterRegistration capture 
the information of the babysitter. BookingDetail stores the booking details made by the user.

User has one to one relationship with BabySitterRegistration. BookingDetail has many to one 
relationship with User and BabySitterRegistration.

##### user

user has one to one relationshp with baby_sitter_registration 


* There are two types of user. One as a babysitter and one user as a parent
* User model  user as a babysitter can have only one registration one to one relationship with the baby_sitter_registration model
  
```
has_one :baby_sitter_registration
```
* The user as a parent can have many booking with babysitters. This is written as below in the app. 

```
has_many :booking_details
```

##### baby_sitter_registration
```
has_one_attached :upload_image

belongs_to :user
has_many :booking_detail
```


##### booking_detail
```
belongs_to :user
belongs_to :baby_sitter_registration
```

#### Discuss the database relations to be implemented in your application


#### Provide your database schema design

* Active Storage Attachment/Blob Models:

These tables are implemented for us by AWS when we install their functionality, and we don't have any choice over the attributes and datatypes.
![blob-model](/docs/schema1.png)

* User model:
  
  These models are part of the devise. I customized this model by running migration to add username and is_baby_sitter field.
  ![user-model](/docs/schema3.png)

* BabySitterRegistration model:
  These models are designed to store all the babysitter details .

#### Describe the way tasks are allocated and tracked in your project















This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
