require 'twitter'
require 'optparse'
require 'dotenv'
require 'date'

class Show
  @days = Array.new(7)
  (0..6).each { |i| @days[i] = [] }

  def self.random_from_file(filename, number = 1)
    result = File.readlines(filename).to_a.sample(number)
    if result.is_a?(Array)
      result.map(&:chomp).first
    else
      x.chomp
    end
  end

  def self.random_celebrity(number = 1)
    random_from_file('2015_celebrities.txt', number)
  end

  def self.random_band(number = 1)
    random_from_file('2015_bands.txt', number)
  end

  def self.random_from_day(day)
    fail 'No shows for that day' unless @days[day].length > 0
    Show.send(@days[day].sample)
  end

  def self.days
    @days
  end
end

Dir['shows/*.rb'].each { |f| require_relative f }

(0..6).each do |day|
  puts "#{Date::DAYNAMES[day]}: #{Show.days[day].inspect}"
end


Dotenv.load

options = {}
OptionParser.new do |opts|
  opts.banner = 'Usage: example.rb [options]'

  opts.on('-t', '--tweet', 'Tweet instead of printing') do
    options[:tweet] = true
  end

  opts.on('-c', '--chaos', 'Ignore current day of week') do
    options[:chaos] = true
  end
end.parse!

length = 141
while length > 140
  if options[:chaos]
    populated_days = Show.days.each_with_index.map { |e, i| [e, i] }
      .reject { |e, _| e.empty? }.map(&:last)
    day = populated_days.sample
  else
    day = (Time.now.wday - 1) % 7
  end
  begin
    recap = Show.random_from_day(day)
  rescue
    recap = 'a' * 150
  end
  length = recap.length
end

if options[:tweet]
  client = Twitter::REST::Client.new do |config|
    config.consumer_key       = ENV['TWITTER_CONSUMER_KEY']
    config.consumer_secret    = ENV['TWITTER_CONSUMER_SECRET']
    config.access_token        = ENV['TWITTER_OAUTH_TOKEN']
    config.access_token_secret = ENV['TWITTER_OAUTH_SECRET']
  end

  client.update(recap)
else
  puts recap
end
