require_relative '../lib/user.rb'


describe User do

	let(:user) { User.new }


	it "should return 1 when passed -7" do
		expect(user.difference(-7)).to eq(1)
	end
	it "should return 2 when passed -6" do
		expect(user.difference(-7)).to eq(1)
	end

	it "shoulc return 10 if given -7" do
		expect(user.points(-7)).to eq(10)
	end

	it "should return 40 if given -6" do
		expect(user.points(-6)).to eq(40)
	end

	it "should get progress 1 and rank -7" do
		user.progress = 101
		user.increase_rank
		expect(user.progress).to eq(1)
		expect(user.rank).to eq(-7)
	end
	

end
