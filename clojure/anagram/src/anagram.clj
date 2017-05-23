(ns anagram)

(defn format [word]
  (sort (clojure.string/lower-case word)))

(defn filter-own-anagram [word candidates]
  (filter
    (fn [x]
      (not=
        (clojure.string/lower-case word)
        (clojure.string/lower-case x)))
    candidates))

(defn anagrams-for [word candidates]
  (filter
    (fn [x] (= (format word) (format x)))
    (filter-own-anagram word candidates)))
