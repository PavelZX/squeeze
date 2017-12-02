![](https://github.com/edance/art/blob/master/squeeze/repo-banner.png)

[![Travis](https://img.shields.io/travis/edance/squeeze.svg?style=flat-square)]()
[![license](https://img.shields.io/github/license/edance/squeeze.svg?style=flat-square)]()

Try it yourself: [https://squeeze-run.herokuapp.com](https://squeeze-run.herokuapp.com)

## Scenarios

As a runner,

- I want to create a calendar of events like runs and weight exercises.
- I want to see my planned events for today.
- I want to create a goal.
- I want to create different paces depending on my goals and events.
- I want to see my recent activities.

## Run your own Squeeze

  * Copy `.env.example` file to `.env` with `cp .env.example .env`
  * Create an app for strava [here](https://developers.strava.com).
  * Set environment variables in your `.env` file.
  * Import your environment variables with `export $(cat .env | grep -v ^# | xargs)`
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## FAQ/Contact

  * Official website: https://squeeze-run.herokuapp.com
  * Guides: WIP
  * Docs: WIP
  * Source: https://github.com/edance/squeeze
