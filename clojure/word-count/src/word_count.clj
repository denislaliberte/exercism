(ns word-count)

(defn word-count [string]
  (frequencies
    (remove empty?
      (clojure.string/split
        (apply str
          (re-seq #"[a-z 0-9]"
            (clojure.string/lower-case string)))
      #" "))))
