require('terminal-color')
require('./yuksekpuan.rb')

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

	def self.yuksek_puan puanlar
		i = 1

		puts "##{" " * 15}Kullanıcı#{" " * 15}Puan".bold
		puts "--------------------------------------------".bold
		puanlar.liste2.each do |kayit|
			veri = kayit.split(',')
			
			puts "#{i}#{" " * 15}#{veri[0]}#{" " * (24 - veri[0].length)}#{veri[1]}".bold
			i += 1
		end
	end

	def self.basarili(kelime, kullanici, puan)
		puts " " 
		puts "-----------".bold
		puts "TEBRİKLER #{kullanici}! Aranan kelimeyi buldunuz.".bold.green
		puts "Kelime: #{kelime}".bold.yellow
		puts "Kazandığınız Puan: #{puan}".bold.magenta

		yeniSkor = YuksekPuan.new()
		yeniSkor.ekle("#{kullanici},#{puan}")
	end

	def self.hatali(kelime, kullanici, puan)
		puts " " 
		puts " " 
		puts "-----------".bold
		puts "OYUN BİTTİ #{kullanici.bold.yellow}!".bold.red
		puts "Aranan kelimeyi bulamadınız.".bold
		puts "Kelime: #{kelime.green}".bold.yellow
		puts "Kazandığınız Puan: #{puan}".bold.magenta
	end

	def self.temizle
		puts `clear`
	end

	def self.mesaj mesaj
		puts " "; puts mesaj
	end

end
