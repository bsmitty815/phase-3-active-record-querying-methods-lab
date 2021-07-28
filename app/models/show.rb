require "pry"

class Show < ActiveRecord::Base

    def Show.highest_rating
        #returns the rating of the TV show with the highest rating
        Show.maximum(:rating)
    end

    def Show.most_popular_show
        #returns the name of the TV show with the highest rating
        Show.where("rating = ?", Show.highest_rating).first
    end

    def Show.lowest_rating
        #returns the rating of the TV show with the lowest rating
        Show.minimum(:rating)
    end

    def Show.least_popular_show
        #returns the name of the TV show with the lowest rating
        Show.where("rating = ?", Show.lowest_rating).first
    end

    def Show.ratings_sum
        #returns the sum of all the ratings of all the tv shows
        Show.sum(:rating)
    end

    def Show.popular_shows
        #returns an array of all of the shows with a rating above 5
        Show.where("rating > 5")
    end

    def Show.shows_by_alphabetical_order
        #returns an array of all of the shows, listed in alphabetical order
        Show.order(name: :asc)
    end


end