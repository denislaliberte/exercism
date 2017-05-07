(ns bob)

(defn all-upper-case? [x] (identical? (clojure.string/upper-case x) x))

(defn contain-letters? [x] (re-matches #".*[a-zA-Z]{1}.*" x) )

(defn shouts? [x] (and (all-upper-case? x) (contain-letters? x)))

(defn question? [x] (= (last x) \?))

(defn silence? [x] (empty? (clojure.string/trim x)))

(defn all? [x] (= x x))

(defn response-for [interaction]
  (first
     (first
       (filter (fn [[x y]] (y interaction)) [
         ["Fine. Be that way!" silence?]
         ["Whoa, chill out!" shouts?]
         ["Sure." question?]
         ["Whatever." all?]]))))
