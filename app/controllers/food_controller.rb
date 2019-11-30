class FoodController < ApplicationController

  require './crawl'

  def rank
      
  end

  def list
     
     @all_food = Food.all
      
  end

  def detail
      
  end
    
  def cawvtest
     # create = Food.new
     create = Food.new
     create.remote_avatars_url = 'https://publicdomainq.net/images/201901/14s/publicdomainq-0030376aqd.jpg'
      create.title = "hhhh"
      create.foodtype = "bbvbb"
      create.save
      redirect_to '/'
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
          if Food.find_by(title: dry_6star[t][:name]).nil?
              Food.create(title: dry_6star[t][:name], imgsrc: dry_6star[t][:imgsrc], href: dry_6star[t][:href], foodtype: 0)

          else
              puts "Record found"
          end
      end
      
      dry_5star.length.times do |t|
          if Food.find_by(title: dry_5star[t][:name]).nil?
              Food.create(title: dry_5star[t][:name], imgsrc: dry_5star[t][:imgsrc], href: dry_5star[t][:href], foodtype: 0)

          else
              puts "Record found"
          end
      end
      
      dry_4star.length.times do |t|
          if Food.find_by(title: dry_4star[t][:name]).nil?
              Food.create(title: dry_4star[t][:name], imgsrc: dry_4star[t][:imgsrc], href: dry_4star[t][:href], foodtype: 0)

          else
              puts "Record found"
          end
      end
      
      

      dry_3star.length.times do |t|
          if Food.find_by(title: dry_3star[t][:name]).nil?
              Food.create(title: dry_3star[t][:name], imgsrc: dry_3star[t][:imgsrc], href: dry_3star[t][:href], foodtype: 0)

          else
              puts "Record found"
          end
      end
      
      wet_6star.length.times do |t|
          if Food.find_by(title: wet_6star[t][:name]).nil?
              Food.create(title: wet_6star[t][:name], imgsrc: wet_6star[t][:imgsrc], href: wet_6star[t][:href], foodtype: 1)

          else
              puts "Record found"
          end
      end
      
      wet_5star.length.times do |t|
          if Food.find_by(title: wet_6star[t][:name]).nil?
              Food.create(title: wet_6star[t][:name], imgsrc: wet_6star[t][:imgsrc], href: wet_6star[t][:href], foodtype: 1)

          else
              puts "Record found"
          end
      end
      
      wet_4star.length.times do |t|
          if Food.find_by(title: wet_6star[t][:name]).nil?
              Food.create(title: wet_6star[t][:name], imgsrc: wet_6star[t][:imgsrc], href: wet_6star[t][:href], foodtype: 1)

          else
              puts "Record found"
          end
      end
      
      wet_3star.length.times do |t|
          if Food.find_by(title: wet_6star[t][:name]).nil?
              Food.create(title: wet_6star[t][:name], imgsrc: wet_6star[t][:imgsrc], href: wet_6star[t][:href], foodtype: 1)

          else
              puts "Record found"
          end
      end
      
      redirect_to '/'
  end
    
end
