require 'spec_helper'

describe Rdic::Words do

  it '.new_words' do
    words = %w(imanewword debbie)
    Rdic::Words.new_words(words).should include('imanewword')
    Rdic::Words.new_words(words).should_not include('debbie')
  end

  it '#' do
    sample_file = File.expand_path('../samples/some_words.txt', __FILE__)
    Rdic::Words.from_file(sample_file).should include('iamanewword', 'haha')
  end
end
