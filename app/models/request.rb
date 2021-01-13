class Request < ApplicationRecord
    belongs_to :user
    has_many :foods

    attr_reader :measurement, :quantity, :fulfilled

    REQUESTS = []
 
    def initialize(args)
      @measurement = args[:measurement]
      @quantity = args[:quantity]
      @fulfilled = args[:fulfilled]
      REQUESTS << self
    end
   
    def self.all
      REQUESTS
    end

end
