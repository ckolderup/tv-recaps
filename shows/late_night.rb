class Show
  (1..5).each { |i| @days[i] << :late_night }

  def self.late_night
    activities = [
      'does tequila shots',
      'does vodka shots',
      'does rum shots',
      'does whiskey shots',
      'plays air hockey',
      'plays table tennis',
      'plays pool',
      'plays croquet',
      'plays mini-golf',
      'sings karaoke',
      'gets drunk',
      'gets stoned',
      'plays Monopoly',
      'plays Clue',
      'plays Trouble',
      'plays chess',
      'plays Scrabble',
      'plays Jenga',
      'plays Risk',
      'plays Catan',
      'plays Uno',
      'plays Pictionary',
      'watches TV',
      'watches a movie',
      'rides a mechanical bull',
      'plays PS4',
      'plays XBox One',
      'plays Wii U',
      'makes tacos',
      'makes nachos',
      'makes burritos',
      'makes quesadillas',
      'makes popcorn',
      'drives an Uber',
      'goes on Tinder',
      'sends Snapchats',
      'writes Yelp reviews',
      'reads some Verge articles'
    ]

    hosts_shows = [
      ['Jimmy', 'Tonight Show'],
      ['Jimmy', 'Jimmy Kimmel Live'],
      ['James Corden', 'Late Late Show'],
      ['Seth', 'Late Night'],
      ['Carson', 'Last Call'],
      ['Conan', 'Conan'],
    ]

    host_show = hosts_shows.sample
    host = host_show[0]
    show = host_show[1]

    preambles = [
      "#{show.upcase} RECAP",
      "LAST NIGHT'S #{show.upcase}",
      "#{show.upcase}"
    ]

    "#{preambles.sample}: #{host} #{activities.sample} with #{random_celebrity}"
  end
end
