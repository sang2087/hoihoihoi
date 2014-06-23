require "open-uri"

class MainController < ApplicationController
  def index
  end

  def parse
    gmail = Gmail.connect("kinghogoo@gmail.com", "tntkdtntkd1")
    gmail.deliver do
      to "sang2087@gmail.com"
      subject "Having fun in Puerto Rico!"
      text_part do
        body "Text of plaintext message."
      end
      html_part do
        content_type 'text/html; charset=UTF-8'
        body "<p>Text of <em>html</em> message.</p>"
      end
    end

    gmail.logout

    doc = Nokogiri::HTML(open('http://www.naver.com/'))
    images = Array.new
    puts "!!!!!!!!!!!"
    doc.css('.newssa img').each do |link|
       images.push(link[:src])
    end
    @images = images
  end
end
