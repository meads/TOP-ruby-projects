def substrings(word, dictionary)
  matches_hash = {}

  dictionary.each do |term|
    matches = word.downcase.scan(term)

    if matches.length > 0
      matches_hash[term] = matches.length
    end
  end

  matches_hash
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
result = substrings("below", dictionary)
puts result

# {"below" => 1, "low" => 1}

result = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts result

# {"down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1}
