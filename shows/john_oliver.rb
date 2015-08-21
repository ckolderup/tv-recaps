class Show
  @days[0] << :john_oliver

  def self.john_oliver
    violent_verbs = [
      'obliterates',
      'eviscerates',
      'demolishes',
      'destroys',
      'levels',
      'disembowels',
      'defecates on'
    ]

    topics = [
      'the Republican primary',
      'the Democratic primary',
      'the Ashley Madison hack',
      'the Apple Watch',
      'the Tom Brady scandal',
      'the changes to Reddit policy',
      'religion fundamentalists',
      'the same-sex marriage debate',
      'homophobes and transphobes',
      'the Gamergate movement',
      'internet misogyny',
      'corruption in sports'
    ]

    preambles = [
      'JOHN OLIVER:',
      'LAST NIGHT ON LAST WEEK TONIGHT:',
      'RECAP:',
      'DISCUSS:'
    ]

    "#{preambles.sample} John Oliver #{violent_verbs.sample} #{topics.sample}"
  end

end
