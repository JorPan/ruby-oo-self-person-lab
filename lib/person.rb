# your code goes here
require "pry"

class Person

    attr_reader :name, :bank_account, :happiness, :hygiene
    # attr_writer :bank, :happiness, :hygiene
    # attr_accessor :hygiene

    @@all = []

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 

        @@all << self
    end

    def self.all
        @@all
    end

    # def bank=(bank)
    #     bank
    # end

    def happiness=(happiness)
        if happiness < 0
            @happiness = 0
        elsif happiness > 10 
            @happiness = 10
        else
            @happiness = happiness 
        end
    end

    def bank_account=(num)
        @bank_account += num
        @bank_account
    end

    
    def hygiene=(hygiene)
        if hygiene < 0
            @hygiene = 0
        elsif hygiene > 10 
            @hygiene = 10
        else
            @hygiene = hygiene 
        end
    end

    def happy?
        if @happiness > 7 
            return true
        else
            return false
        end
    end 

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene= @hygiene
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        @happiness += 2
        self.hygiene= @hygiene
        self.happiness= @happiness
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        @happiness += 3
        friend.happiness += 3
        self.happiness= @happiness
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        elsif topic == "programming"
            return "blah blah blah blah blah"
        end
    end

end


# binding.pry
0
