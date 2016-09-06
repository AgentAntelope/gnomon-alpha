class Gnomon
  ANSWER_WORDS = %w[
    answer
    decision
    truth
    lie
    solution
  ]
  def self.answer(question)
    prefix(question) + ". #{Hipku::Dictionary::VERBS.sample} the #{Hipku::Dictionary::ADJECTIVES.sample} #{Hipku::Dictionary::ANIMAL_COLORS.sample} #{Hipku::Dictionary::NOUNS.sample}. the #{ANSWER_WORDS.sample} is in their #{Hipku::Dictionary::ADJECTIVES.sample} #{[Hipku::Dictionary::NATURE_NOUNS, Hipku::Dictionary::ANIMAL_NOUNS, Hipku::Dictionary::NOUNS].sample.sample}"
  end

  def self.prefix(question)
    first = question.split.first.downcase
    case first
    when 'when'
      'never'
    when 'how'
      'impossible'
    when 'who'
      'noone'
    when 'what'
      'nothing'
    when 'why'
      'because'
    else
      generate_instructive(question)
    end
  end

  def self.generate_instructive(question)
    'inscrutable'
  end
end
