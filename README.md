# README

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
# rails-watch-list


class Movie < ApplicationRecord
    has_many :bookmarks, dependent: :destroy
    validates :title, presence: true, uniqueness: true
    validates :overview, presence: true
  end


class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :list, uniqueness: { scope: :movie }
  validates :comment, length: { minimum: 6 }
end
