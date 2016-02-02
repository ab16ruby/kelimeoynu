require('json')

class YuksekPuan

	def initialize
		@kayitlar = []
		oku
	end

	def liste
		@kayitlar
	end

	def ekle (kelime)
		raise ArgumentError unless kelime.is_a? String
		@kayitlar << kelime
		kaydet
	end

	private

	def kaydet
		if File.exist? "yuksekpuan.db" and File.readable? "yuksekpuan.db"
			File.open("yuksekpuan.db", "w") do |dosya|
				@kayitlar.each { |kelime| dosya.puts kelime.to_json }
			end
		end
	end

	def oku
		if File.exist? "yuksekpuan.db" and File.readable? "yuksekpuan.db"
			File.open("yuksekpuan.db") do |dosya|
				dosya.readlines.each { |satir| @kayitlar << satir unless satir.empty? }
			end
		end
	end

end