require 'spec_helper'

describe Rdic::EnglishDic do
  it '.data' do
    Rdic::EnglishDic.data.count.should > 0
    Rdic::EnglishDic.data.should include('debbie')
  end
end
