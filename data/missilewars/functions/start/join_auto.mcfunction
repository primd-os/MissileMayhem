execute store result score BlueMembers Constants run team list Blue
execute store result score GreenMembers Constants run team list Green
execute if score BlueMembers Constants < GreenMembers Constants run function missilewars:start/join_blue
execute if score BlueMembers Constants >= GreenMembers Constants run function missilewars:start/join_green