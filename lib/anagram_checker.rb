class AnagramChecker

  def anagrams(a, b)
    return nil unless a.size == b.size
    a.zip(b).map { |aw,bw| anagram?(aw,bw) ? 1 : 0 }
  end

  private

  def anagram?(aw, bw)
    return false unless aw.size == bw.size
    counts = aw.downcase.each_char.with_object(Hash.new(0)) { |c,h| h[c] += 1 }
    bw.downcase.each_char do |c|
      return false unless counts[c] > 0
      counts[c] -= 1
    end
    true
  end

end