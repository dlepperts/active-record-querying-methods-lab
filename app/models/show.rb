class Show < ActiveRecord::Base

    # Returns the rating of the TV show with the highest rating
    def self.highest_rating
        self.maximum(:rating)
    end

    # Returns the rating of the TV show with the lowest rating
    def self.lowest_rating
        self.minimum(:rating)
    end

    # Returns the name of the TV show with the highest rating 
    def self.most_popular_show
        self.order(:rating)[-1]
    end

    # Returns the rating of the TV show with the lowest rating 
    def self.least_popular_show
        self.order(:rating)[0]
    end

    # Returns the sum of all the ratings of all the tv shows
    def self.ratings_sum
        self.sum(:rating)
    end

    # Returns an array of all of the shows with a rating above 5
    def self.popular_shows
        self.where("rating > 5", :rating)
    end

    # Returns an array of all of the shows, listed in alphabetical order
    def self.shows_by_alphabetical_order
        self.order(name: :asc)
    end

end