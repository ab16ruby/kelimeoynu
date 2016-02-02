class Kelime

	def initialize
		@kelimeler = []
		oku
	end

	def kac_harf (sayi)
		@kelimeler.select { |kelime| kelime.chomp.length == sayi }
	end

	def liste
		@kelimeler
	end

	def kelime_ekle (kelime)
		raise ArgumentError unless kelime.is_a? String
		@kelimeler << kelime
		kaydet
	end

	private

	def kaydet
		if File.exist? "data.db" and File.readable? "data.db"
			File.open("data.db", "w") do |dosya|
				@kelimeler.each { |kelime| dosya.puts kelime.downcase }
			end
		end
	end

	def oku
		if File.exist? "data.db" and File.readable? "data.db"
			File.open("data.db") do |dosya|
				dosya.readlines.each { |satir| @kelimeler << satir unless satir.empty? }
			end
		end
	end

end