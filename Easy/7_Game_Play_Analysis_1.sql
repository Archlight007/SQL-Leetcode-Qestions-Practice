--GAME PLAY ANALYSIS 1
with sol as(
    select player_id,
    event_date as first_login,
    row_number() over (
        partition by player_id
        order by event_date
    ) as rn
    from activity
)

select player_id, first_login from sol
where rn = 1