require('terminal-color')

class App
	def self.ana_menu
		puts `clear`
		puts "KELİME OYUNUNA HOŞGELDİNİZ".bold.magenta
		puts "--------------------------".bold
		puts "Lütfen bir seçim yapın:"
		puts " "
		puts "1- OYUNA BAŞLA".bold.red
		puts "2- YÜKSEK PUANLAR".bold.blue
		puts "3- KELİME EKLE".bold.yellow
		puts "E- ÇIK".bold
		puts " "
		print "Seçiminiz: ".bold

		gets.chomp.upcase
	end

	def self.oyun_sonu(mesaj=nil)
		puts " "
		puts " "
		puts "---".bold
		puts "Çıkmak için E, Ana Menü için A#{mesaj.nil? ? "" : ", " + mesaj} yazınız: ".bold
		puts "---".bold
		print "Seçiminiz: ".bold

		gets.chomp.upcase
	end

	def self.temizle
		puts `clear`
	end

	def self.mesaj mesaj
		puts " "; puts mesaj
	end

end
