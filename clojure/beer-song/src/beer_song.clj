(ns beer-song)

(defn asdf [count]
  (cond
  (= count 0) (str "no more bottles")
  (= count 1) (str count " bottle")
  (> count 1) (str count " bottles")
  )
)

(defn verse [index]
  (cond
  (= index 0) (str "No more bottles of beer on the wall, no more bottles of beer.\n"
       "Go to the store and buy some more, 99 bottles of beer on the wall.\n")
  (= index 1) (str "1 bottle of beer on the wall, 1 bottle of beer.\n"
       "Take it down and pass it around, no more bottles of beer on the wall.\n")
  (> index 1) (str (asdf index) " of beer on the wall, " (asdf index) " of beer.\n"
       "Take one down and pass it around, "(asdf (- index 1))" of beer on the wall.\n")
  ))

