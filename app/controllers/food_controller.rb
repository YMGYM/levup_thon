class FoodController < ApplicationController

  require './crawl'

  def rank
  end

  def list
  end

  def detail
  end
    
        
  def crawl
      
      #크롤링할 데이터 링크 저장
      
      dry_6star = Crawler.crawl('http://www.dogfoodanalysis.com/dog_food_reviews/showcat.php/cat/8')
      
      dry_5star = Crawler.crawl('http://www.dogfoodanalysis.com/dog_food_reviews/showcat.php/cat/3')
      
      dry_4star = Crawler.crawl('http://www.dogfoodanalysis.com/dog_food_reviews/showcat.php/cat/4')
      
      dry_3star = Crawler.crawl('http://www.dogfoodanalysis.com/dog_food_reviews/showcat.php/cat/5')
      
      wet_6star = Crawler.crawl('http://www.dogfoodanalysis.com/dog_food_reviews/showcat.php/cat/11')
      
      wet_5star = Crawler.crawl('http://www.dogfoodanalysis.com/dog_food_reviews/showcat.php/cat/12')
      
      wet_4star = Crawler.crawl('http://www.dogfoodanalysis.com/dog_food_reviews/showcat.php/cat/13')
      
      wet_3star = Crawler.crawl('http://www.dogfoodanalysis.com/dog_food_reviews/showcat.php/cat/14')
      
     
      # type == 0 => dry
      # type == 1 => wet
      
      dry_6star.length.times do |t|
          if Food.find_by_name(dry_6star[t].name).nil?
              Food.Create(title::dry_6star[t].name, imgsrc::dry_6star[t].imgsrc, href::dry_6star[t].href, type:0)
          else
              next
          end
      end
      
      
      
  end
    
end
