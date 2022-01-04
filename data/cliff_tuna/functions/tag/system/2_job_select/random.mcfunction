#マップをランダムに抽選する関数
function cliff_tuna:tag/system/random/0_4_st

execute if score #map calculation_mjsk matches 0 run function cliff_tuna:tag/system/2_job_select/tp_maps/tp_city
execute if score #map calculation_mjsk matches 1 run function cliff_tuna:tag/system/2_job_select/tp_maps/tp_castle
execute if score #map calculation_mjsk matches 2 run function cliff_tuna:tag/system/2_job_select/tp_maps/tp_school
execute if score #map calculation_mjsk matches 3 run function cliff_tuna:tag/system/2_job_select/tp_maps/tp_prison
execute if score #map calculation_mjsk matches 4 run function cliff_tuna:tag/system/2_job_select/tp_maps/tp_aquarium

tag @a remove preparation_mjsk
bossbar set cliff_tuna:job_select_timer players
