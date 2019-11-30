module Crawler
    require 'open-uri'
    require 'nokogiri'

    def Crawler.crawl(url)
        # 수정 원본 도큐먼트 파일입니다.
        doc = Nokogiri::HTML(open(url))

        # 리턴 배열
        @food_data = []

        namedata = []
        trimmed = doc.css('.tddetails span.medium a')

        trimmed.each do |t|
            namedata.push(t.inner_text)

        end



        imgdata = []

        imgtrim = doc.css('.tddetails')

        imgtrim.each do |i|
            if i.css('img').empty? == false
                extractImage = i.css('img').attr('src')
                imgdata.push(extractImage)

            end
        end

        linkdata = []

        linktrim = doc.css('.tddetails > table')

        linktrim.each do |i|
            linkdata.push(i.css('a').attr('href'))
        end


        namedata.length.times do |p|
            current_food = {}
            current_food[:name] = namedata[p]
            current_food[:imgsrc] = imgdata[p]
            current_food[:href] = linkdata[p]

            @food_data.push(current_food)
        end
        
        
        return @food_data
    end
end
    