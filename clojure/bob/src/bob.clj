(ns bob)

(defn shouts? [qwer] (identical? (clojure.string/upper-case qwer) qwer))

(defn response-for
  [question] (if (shouts? question) "Whoa, chill out!" "Whatever.")
)

