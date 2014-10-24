{-- Task

	Assume inputList as a paylist, which starts from Monday.
	Should calculate Weekend money spending.

--}

-- Task interface implementation --
weekendExpences payList = weekendExpencesHelp payList 0
-- Full week counter --
weekendExpencesHelp (mo:tu:we:th:fr:sa:su:rest) accumulator = weekendExpencesHelp rest (sum [sa, su, accumulator])
-- End list handler --
weekendExpencesHelp _ accumulator = accumulator