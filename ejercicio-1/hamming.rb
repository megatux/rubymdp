class Hamming
  def self.distance(s, t)
    raise ArgumentError, 'Hamming distance require strings of same length' if s.length != t.length
    s.length.times.inject(0) {|diffs,i| diffs + (t[i]!=s[i] ? 1 : 0)}
  end
end
