-- Rank the players by the number of points
SELECT `full_name`,
		`points`,

		RANK() OVER(
			ORDER BY `points` desc
		) player_overall_rank,
		`group_name`

FROM `player`
ORDER BY player_overall_rank;
