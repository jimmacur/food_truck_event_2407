require './lib/item'
require './lib/food_truck'
require './lib/event'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Event do
    before(:each) do
        @event = Event.new("South Pearl Street Farmers Market") 

        @food_truck1 = FoodTruck.new("Rocky Mountain Pies")

        @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
        @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
        @item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
        @item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
    end

    describe 'initialize' do
        it 'exists' do
            expect(@event).to be_an Event
            expect(@event.name).to eq "South Pearl Street Farmers Market"
            expect(@event.food_trucks).to eq []
        end
    end
end