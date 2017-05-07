(ns bob)

(defn shouts? [x] (identical? (clojure.string/upper-case x) x))

(defn question? [x] (clojure.string/includes? x "?"))

(defn all? [x] (= x x))

(defn response-fora
  [interaction] (if (shouts? interaction) "Whoa, chill out!" "Whatever.")
)

(defn response-for [interaction]
  (first
     (first
       (filter (fn [[x y]] (y interaction)) [
         ["Whoa, chill out!" shouts?]
         ["Sure." question?]
         ["Whatever." all?]]))))
