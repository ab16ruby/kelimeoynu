class YuksekPuan

	def initialize
		@kayitlar = []
		oku
	end

	def liste
		@kayitlar
	end

	def liste2
		@kayitlar.sort { |x, y| 

			veri1 = x.split(',')
			veri2 = y.split(',')

			veri1[1] <=> veri2[1]
		}
	end

	def ekle (veri)
		raise ArgumentError unless veri.is_a? String
		@kayitlar << veri
		kaydet
	end

	private

	def kaydet
		if File.exist? "yuksekpuan.db" and File.readable? "yuksekpuan.db"
			File.open("yuksekpuan.db", "w") do |dosya|
				@kayitlar.each { |veri| dosya.puts veri.downcase }
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