(ns bob)

(defn upcase? [qwer] (identical? (clojure.string/upper-case qwer) qwer))

(defn response-for
  [question] (if (upcase? question) "Whoa, chill out!" "Whatever.")
)

