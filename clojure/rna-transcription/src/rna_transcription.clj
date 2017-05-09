(ns rna-transcription)

(defn transcribe-nucleotide [nucleotide]
  (case nucleotide
  \C \G
  \G \C
  \A \U
  \T \A
  ""))

(defn to-rna [strands]
  (let [ result (clojure.string/join (map transcribe-nucleotide strands)) ]
  (assert (= (count strands) (count result)))
  result))
