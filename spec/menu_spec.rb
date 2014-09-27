require 'menu'

describe Menu do 

	let(:menu) {Menu.new([:burger, :chicken])}
	let(:dish) {double :dish}

	it "should have a list of dishes" do
		expect(menu.dishes).not_to be nil
	end

	it "can have more dishes" do
		expect{menu.add_dish(dish)}.to change{menu.dish_count}.by 1
	end

	it "can remove dishes" do
		expect{menu.remove_dish(:burger)}.to change{menu.dish_count}.by -1
	end

	it "has a new dish if added" do
		menu.add_dish(:dish)
		expect(menu.dishes.include?(:dish)).to be true
	end

	it "doesn't have a dish if removed" do
		menu.remove_dish(:burger)
		expect(menu.dishes.include?(:burger)).to be false
	end


	
end