class Kelime

	def initialize
		@kelimeler = []
		oku
	end

	def kac_harf (sayi)
		@kelimeler.select { |kelime| kelime.length == sayi }
	end


	def liste
		@kelimeler
	end

	private

	def oku
		if File.exist? "data.db" and File.readable? "data.db"
			File.open("data.db") do |dosya|
				dosya.readlines.each { |satir| @kelimeler << satir unless satir.empty? }
			end
		end
	end

end