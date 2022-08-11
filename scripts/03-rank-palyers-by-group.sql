-- Rank players by group
SELECT `full_name`,
       `points`,

       RANK() OVER(
	       ORDER BY `points` desc
	       ) player_overall_rank,
       `group_name`,

       RANK() OVER( PARTITION BY `group_name`
	       ORDER BY `points` desc
	       ) player_group_rank

FROM `player`
ORDER BY group_name, player_group_rank;
