def reformat_languages(languages)

  reformatted = Hash.new

languages.each do |name, values|
  values.each do |language, att|
      if reformatted[language] == nil 
        reformatted[language] = att
        reformatted[language][:style] = [name]
      else
        reformatted[language][:style] << name
      end
    end
  end
reformatted
end
