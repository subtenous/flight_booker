# Flight Booker

A simple flight booking app built with Ruby on Rails as part of The Odin Project.

## Features

- Search for flights by:
  - Departure airport
  - Arrival airport
  - Flight date
  - Number of passengers
- Select an available flight
- Enter passenger details 
- Create a booking for multiple passengers

## Setup

Clone the repository:

```bash
git clone https://github.com/subtenous/flight_booker.git
cd flight_booker
```

Install dependencies:

```bash
bundle install
```

Setup DB:

```bash
rails db:create
rails db:migrate
rails db:seed
```

Start the server:

```bash
rails s
```

Visit:

```
http://localhost:3000
```
