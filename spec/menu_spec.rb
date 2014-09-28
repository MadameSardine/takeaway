require 'menu'

describe Menu do 

	let(:menu) {Menu.new}
	let(:burger) {double :burger}

	it "should have a list of dishes" do
		expect(menu.dish_count).to eq(0)
	end

	it "can have more dishes" do
		expect{menu.add_dish(burger)}.to change{menu.dish_count}.by 1
	end

	it "can remove dishes" do
		menu.add_dish(burger)
		expect{menu.remove_dish(burger)}.to change{menu.dish_count}.by -1
	end

	it "has a new dish if added" do
		menu.add_dish(burger)
		expect(menu.dishes.include?(burger)).to be true
	end

	it "doesn't have a dish if removed" do
		menu.add_dish(burger)
		menu.remove_dish(burger)
		expect(menu.dishes.include?(burger)).to be false
	end


	
end