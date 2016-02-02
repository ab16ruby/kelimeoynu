require 'turkish_support'
require 'json'
class Kisi
	attr_accessor :isim,:puan

	def initialize (isim)
		@isim = adi
		@puan = 0
		
	end

	def ad_soyad
		"#{@adi} #{@soyadi}"
	end
end