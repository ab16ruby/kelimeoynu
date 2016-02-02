require "turkish_support"
require "./kisi"

class Kisilistesi
def initialize
	@kisiler = []
end

def ekle (kisi)
		raise ArgumentError unless kisi.is_a? Kisi
		@kisiler << kisi
		
end


def ada_gore_ara (isim)
	@kisiler.select { |kisi| kisi.isim.upcase.include? adi.upcase }
end


def yuksekpuanlar
		
		File.open('yuksekpuanlar.db','r').readlines.each { |line| puts line }
		
		
end	

def oyunsonu
	puanlar = []
		File.open('yuksekpuanlar.db','r').readlines().each {|line| dizi<<line}
	unless puanlar.empty? True
		puanlar.sort! 
	end
		File.open('yuksekpuanlar.db','w') do |dosya| 
			puanlar.each {|eleman|}
			dosya.puts eleman

		end
end

end