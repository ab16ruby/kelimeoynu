class App
	def self.ana_menu
		puts `clear`
		puts "KELİME OYUNUNA HOŞGELDİNİZ"
		puts "--------------------------"
		puts "Lütfen bir seçim yapın:"
		puts " "
		puts "1- OYUNA BAŞLA"
		puts "2- YÜKSEK PUANLAR"
		puts "3- KELİME EKLE"
		puts "E- ÇIK"
		puts " "
		print "Seçiminiz: "

		gets.chomp.upcase
	end

	def self.oyun_sonu
		puts " "
		puts " "
		puts "---"
		puts "Çıkmak için E, Ana Menü için A yazınız: "
		puts "---"
		print "Seçiminiz: "

		gets.chomp.upcase
	end

	def self.temizle
		puts `clear`
	end

end
