{-- Task

	Take first element, where sin x >= n for bigSin n
--}

bigSin input = head [element | x <-[1..], let element = sin x, element >= input]

bigSin' input = take 1 (filter (>input) (map sin [1..]))