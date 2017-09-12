# eCommerce-site

## Objectives of Project

There is currently no reliable way to buy or sell items locally with certainty of the buyer or seller’s authenticity. The objective of our website is to create a platform to facilitate buying and selling products in a small community with an ability to offer on a suggested price and leave user feedback.

## What ShopSJSU Offers

Registered users can post an item to sell on the ShopSJSU platform by entering a product name, price, description and image. Authenticated users are able to browse items for sale posted by other students on the home page and can message sellers directly within the application to arrange a transaction in person. Sellers can also filter by items that they have posted and are able to edit their own items. Users not registered in the ShopSJSU database can still browse items for sale via the home page but cannot message sellers.


#### Home Page:

![Home Page](https://i.imgur.com/gXteTLn.png)

#### Product Page:

![Product Page](https://i.imgur.com/78HmK4S.png)

#### Messaging Page:

![Messaging Page](https://i.imgur.com/UrD5WdZ.png)

## How to build the application

This application uses paperclip gem. In order to use this gem some configurations are needed:

https://github.com/thoughtbot/paperclip/wiki/Requirements

After paperclip has been installed, use the following commands to build the application:

    bundle install
    rake db:migrate


##  How to run the application
This application is run on the local host. 

Use the following commands to start the application:

    rails server

Open a browser and type:

    localhost:3000
