class Ship < ActiveRecord::Base

    belongs_to :pirate

    attr_accessor :name, :type, :booty

    SHIPS = []

    def initialize(name, type, booty)
        @name = name
        @type = type
        @booty = booty
        SHIPS << self 
    end

    def self.all
        SHIPS
    end

    def self.clear
        delete.all 
    end

end