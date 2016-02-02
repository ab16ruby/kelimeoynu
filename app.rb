require('terminal-color')

class App
	def self.ana_menu
		puts `clear`
		puts "KELİME OYUNUNA HOŞGELDİNİZ"
		puts "--------------------------"
		puts "Lütfen bir seçim yapın:"
		puts " "
		puts "1- OYUNA BAŞLA".red
		puts "2- YÜKSEK PUANLAR".blue
		puts "3- KELİME EKLE".yellow
		puts "E- ÇIK"
		puts " "
		print "Seçiminiz: "

		gets.chomp.upcase
	end

	def self.oyun_sonu(mesaj=nil)
		puts " "
		puts " "
		puts "---"
		puts "Çıkmak için E, Ana Menü için A#{mesaj.nil? ? "" : ", " + mesaj} yazınız: "
		puts "---"
		print "Seçiminiz: "

		gets.chomp.upcase
	end

	def self.temizle
		puts `clear`
	end

	def self.mesaj mesaj
		puts " "; puts mesaj
	end

end
