class User

	RANKS = [-8, -7, -6, -5, -4, -3, -2, -1, 1, 2, 3, 4, 5, 6, 7, 8]
	
	def initialize
		@rank = -8
		@progress = 0
	end

	attr_accessor :rank
	attr_accessor :progress
	
	def inc_progress(rank)
    raise "Rank does not exist" if !RANKS.include?(rank)
		@progress += points(rank)
		check_progress
	end

	def points(rank)
		return 0 if difference(rank) < -1
		return 1 if difference(rank) == -1
		return 3 if difference(rank) == 0
		10 * difference(rank)**2
	end

	def difference(rank)
		(RANKS.index(rank)) - (RANKS.index(@rank))
	end

	def check_progress	
		while @progress >= 100 && @rank < 8 do
			increase_rank  
		end
		@progress = 0 if @rank == 8
	end

	def increase_rank
	 	@rank = RANKS[RANKS.index(@rank) + 1]
		@progress -= 100 
	end

end