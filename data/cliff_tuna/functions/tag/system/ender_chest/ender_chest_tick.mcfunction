#毎tick動く関数（エンダーチェスト用）

execute as @a[scores={enderchest_mjsk=1..}] run function cliff_tuna:tag/system/ender_chest/1_mainmenu_mute

#1_mainmenu
execute as @a[scores={job_select_mjsk=1}] unless data entity @s EnderItems[{Slot:4b}] run function cliff_tuna:tag/system/2_job_select/ready
execute as @a[scores={job_select_mjsk=1}] unless data entity @s EnderItems[{Slot:4b}] run function cliff_tuna:tag/system/ender_chest/1_mainmenu_mute

execute as @a[scores={job_select_mjsk=1}] unless data entity @s EnderItems[{Slot:10b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=1}] unless data entity @s EnderItems[{Slot:12b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=1}] unless data entity @s EnderItems[{Slot:14b}] run function cliff_tuna:tag/system/ender_chest/31_neet
execute as @a[scores={job_select_mjsk=1}] unless data entity @s EnderItems[{Slot:16b}] run function cliff_tuna:tag/system/ender_chest/51_map


#11_killer
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:0b}] run function cliff_tuna:tag/jobs/k1_zombie/select_zombie
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:1b}] run function cliff_tuna:tag/jobs/k2_skeleton/select_skeleton
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:2b}] run function cliff_tuna:tag/jobs/k3_creeper/select_creeper
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:3b}] run function cliff_tuna:tag/jobs/k4_enderman/select_enderman
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:4b}] run function cliff_tuna:tag/jobs/k5_silverfish/select_silverfish
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:5b}] run function cliff_tuna:tag/jobs/k6_phantom/select_phantom
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:6b}] run function cliff_tuna:tag/jobs/k7_blaze/select_blaze
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:7b}] run function cliff_tuna:tag/jobs/k8_witch/select_witch
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:8b}] run function cliff_tuna:tag/jobs/k9_husk/select_husk
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:9b}] run function cliff_tuna:tag/jobs/k10_drowned/select_drowned
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:10b}] run function cliff_tuna:tag/jobs/k11_spider/select_spider
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:11b}] run function cliff_tuna:tag/jobs/k12_stray/select_stray
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:12b}] run function cliff_tuna:tag/jobs/k13_guardian/select_guardian
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:13b}] run function cliff_tuna:tag/jobs/k14_ghast/select_ghast
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:14b}] run function cliff_tuna:tag/jobs/k15_slime/select_slime
execute as @a[tag=confirm_killer,team=killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:15b}] run function cliff_tuna:tag/jobs/k16_shulker/select_shulker

execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:0b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:1b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:2b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:3b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:4b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:5b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:6b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:7b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:8b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:9b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:10b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:11b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:12b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:13b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:14b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[tag=confirm_killer,team=!killer_mjsk,scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:15b}] run function cliff_tuna:tag/system/ender_chest/11_killer
#ロビー（confirm_killerがついていないとき）クリックしても転職しないように
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:0b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:1b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:2b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:3b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:4b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:5b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:6b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:7b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:8b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:9b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:10b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:11b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:12b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:13b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:14b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:15b}] run function cliff_tuna:tag/system/ender_chest/11_killer

execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:18b}] run function cliff_tuna:tag/system/ender_chest/51_map
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:22b}] run function cliff_tuna:tag/system/ender_chest/1_mainmenu
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:23b}] run function cliff_tuna:tag/system/ender_chest/12_killer
execute as @a[scores={job_select_mjsk=11}] unless data entity @s EnderItems[{Slot:26b}] run function cliff_tuna:tag/system/ender_chest/21_runner

#12_killer


execute as @a[scores={job_select_mjsk=12}] unless data entity @s EnderItems[{Slot:18b}] run function cliff_tuna:tag/system/ender_chest/51_map
execute as @a[scores={job_select_mjsk=12}] unless data entity @s EnderItems[{Slot:21b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=12}] unless data entity @s EnderItems[{Slot:22b}] run function cliff_tuna:tag/system/ender_chest/1_mainmenu
execute as @a[scores={job_select_mjsk=12}] unless data entity @s EnderItems[{Slot:26b}] run function cliff_tuna:tag/system/ender_chest/21_runner

#21_runner
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:0b}] run function cliff_tuna:tag/jobs/r1_villager/select_villager
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:1b}] run function cliff_tuna:tag/jobs/r2_iron_golem/select_iron_golem
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:2b}] run function cliff_tuna:tag/jobs/r3_sheep/select_sheep
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:3b}] run function cliff_tuna:tag/jobs/r4_wolf/select_wolf
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:4b}] run function cliff_tuna:tag/jobs/r5_chicken/select_chicken
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:5b}] run function cliff_tuna:tag/jobs/r6_bee/select_bee
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:6b}] run function cliff_tuna:tag/jobs/r7_polar_bear/select_polar_bear
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:7b}] run function cliff_tuna:tag/jobs/r8_cat/select_cat
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:8b}] run function cliff_tuna:tag/jobs/r9_fox/select_fox
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:9b}] run function cliff_tuna:tag/jobs/r10_rabbit/select_rabbit
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:10b}] run function cliff_tuna:tag/jobs/r11_cow/select_cow
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:11b}] run function cliff_tuna:tag/jobs/r12_snow_golem/select_snow_golem
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:12b}] run function cliff_tuna:tag/jobs/r13_axolotl/select_axolotl
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:13b}] run function cliff_tuna:tag/jobs/r14_wandering_trader/seledt_wandering_trader
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:14b}] run function cliff_tuna:tag/jobs/r15_glow_squid/select_glow_squid
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:15b}] run function cliff_tuna:tag/jobs/r16_pig/select_pig
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:16b}] run function cliff_tuna:tag/jobs/r17_turtle/selelct_turtle
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:17b}] run function cliff_tuna:tag/jobs/r18_horse/select_horse

execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:0b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:1b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:2b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:3b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:4b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:5b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:6b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:7b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:8b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:9b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:10b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:11b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:12b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:13b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:14b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:15b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:16b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:17b}] run function cliff_tuna:tag/system/ender_chest/21_runner
#ロビー（confirm_killerがついていないとき）クリックしても転職しないように
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:0b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:1b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:2b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:3b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:4b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:5b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:6b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:7b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:8b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:9b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:10b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:11b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:12b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:13b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:14b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:15b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:16b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:17b}] run function cliff_tuna:tag/system/ender_chest/21_runner

execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:18b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:22b}] run function cliff_tuna:tag/system/ender_chest/1_mainmenu
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:23b}] run function cliff_tuna:tag/system/ender_chest/22_runner
execute as @a[scores={job_select_mjsk=21}] unless data entity @s EnderItems[{Slot:26b}] run function cliff_tuna:tag/system/ender_chest/31_neet

#22_runner
execute as @a[tag=confirm_killer,team=runner_mjsk,scores={job_select_mjsk=22}] unless data entity @s EnderItems[{Slot:0b}] run function cliff_tuna:tag/jobs/r19_tropical_fish/select_tropical_fish

execute as @a[tag=confirm_killer,team=!runner_mjsk,scores={job_select_mjsk=22}] unless data entity @s EnderItems[{Slot:0b}] run function cliff_tuna:tag/system/ender_chest/22_runner
#ロビー（confirm_killerがついていないとき）クリックしても転職しないように
execute as @a[scores={job_select_mjsk=22}] unless data entity @s EnderItems[{Slot:0b}] run function cliff_tuna:tag/system/ender_chest/22_runner

execute as @a[scores={job_select_mjsk=22}] unless data entity @s EnderItems[{Slot:18b}] run function cliff_tuna:tag/system/ender_chest/11_killer
execute as @a[scores={job_select_mjsk=22}] unless data entity @s EnderItems[{Slot:21b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=22}] unless data entity @s EnderItems[{Slot:22b}] run function cliff_tuna:tag/system/ender_chest/1_mainmenu
execute as @a[scores={job_select_mjsk=22}] unless data entity @s EnderItems[{Slot:26b}] run function cliff_tuna:tag/system/ender_chest/31_neet

#31_neet
execute as @a[tag=confirm_killer,scores={job_select_mjsk=31}] unless data entity @s EnderItems[{Slot:13b}] run function cliff_tuna:tag/jobs/unemployed/select_unemployed
execute as @a[scores={job_select_mjsk=31}] unless data entity @s EnderItems[{Slot:13b}] run function cliff_tuna:tag/system/ender_chest/31_neet

execute as @a[scores={job_select_mjsk=31}] unless data entity @s EnderItems[{Slot:18b}] run function cliff_tuna:tag/system/ender_chest/21_runner
execute as @a[scores={job_select_mjsk=31}] unless data entity @s EnderItems[{Slot:22b}] run function cliff_tuna:tag/system/ender_chest/1_mainmenu
execute as @a[scores={job_select_mjsk=31}] unless data entity @s EnderItems[{Slot:26b}] run function cliff_tuna:tag/system/ender_chest/51_map

#51_map
execute as @a[tag=confirm_killer,scores={job_select_mjsk=51},team=killer_mjsk] unless data entity @s EnderItems[{Slot:1b}] run scoreboard players set map system 1
execute as @a[tag=confirm_killer,scores={job_select_mjsk=51},team=killer_mjsk] unless data entity @s EnderItems[{Slot:3b}] run scoreboard players set map system 2
execute as @a[tag=confirm_killer,scores={job_select_mjsk=51},team=killer_mjsk] unless data entity @s EnderItems[{Slot:5b}] run scoreboard players set map system 3
execute as @a[tag=confirm_killer,scores={job_select_mjsk=51},team=killer_mjsk] unless data entity @s EnderItems[{Slot:11b}] run scoreboard players set map system 4
execute as @a[tag=confirm_killer,scores={job_select_mjsk=51},team=killer_mjsk] unless data entity @s EnderItems[{Slot:13b}] run scoreboard players set map system 5
execute as @a[tag=confirm_killer,scores={job_select_mjsk=51},team=killer_mjsk] unless data entity @s EnderItems[{Slot:15b}] run scoreboard players set map system 6

execute as @a[scores={job_select_mjsk=51}] unless data entity @s EnderItems[{Slot:1b}] run function cliff_tuna:tag/system/ender_chest/51_map
execute as @a[scores={job_select_mjsk=51}] unless data entity @s EnderItems[{Slot:3b}] run function cliff_tuna:tag/system/ender_chest/51_map
execute as @a[scores={job_select_mjsk=51}] unless data entity @s EnderItems[{Slot:5b}] run function cliff_tuna:tag/system/ender_chest/51_map
execute as @a[scores={job_select_mjsk=51}] unless data entity @s EnderItems[{Slot:11b}] run function cliff_tuna:tag/system/ender_chest/51_map
execute as @a[scores={job_select_mjsk=51}] unless data entity @s EnderItems[{Slot:13b}] run function cliff_tuna:tag/system/ender_chest/51_map
execute as @a[scores={job_select_mjsk=51}] unless data entity @s EnderItems[{Slot:15b}] run function cliff_tuna:tag/system/ender_chest/51_map

execute as @a[scores={job_select_mjsk=51}] unless data entity @s EnderItems[{Slot:18b}] run function cliff_tuna:tag/system/ender_chest/31_neet
execute as @a[scores={job_select_mjsk=51}] unless data entity @s EnderItems[{Slot:22b}] run function cliff_tuna:tag/system/ender_chest/1_mainmenu
execute as @a[scores={job_select_mjsk=51}] unless data entity @s EnderItems[{Slot:26b}] run function cliff_tuna:tag/system/ender_chest/11_killer
