module Rdic
  class EnglishDic
    def self.data
      unless @@data
        dic_path = File.expand_path('../../dic/english.dic', __FILE__)
        @@data = File.readlines(dic_path).map{|dic|dic.strip.downcase}
      end
      @@data
    end
  end
end
