

forceload add ~-200 ~-200 ~-100 ~200
forceload add ~-100 ~-200 ~0 ~200
forceload add ~0 ~-200 ~100 ~200
forceload add ~100 ~-200 ~200 ~200

fill ~-113 0 ~-113 ~112 128 ~-113 barrier
fill ~112 0 ~-113 ~112 128 ~112 barrier
fill ~112 0 ~112 ~-113 128 ~112 barrier
fill ~-113 0 ~112 ~-113 128 ~-113 barrier
fill ~-113 128 ~-113 ~112 128 ~0 barrier
fill ~-113 128 ~0 ~112 128 ~112 barrier
fill ~-114 0 ~-114 ~113 0 ~-114 gray_stained_glass
fill ~113 0 ~-114 ~113 0 ~113 gray_stained_glass
fill ~113 0 ~113 ~-114 0 ~113 gray_stained_glass
fill ~-114 0 ~113 ~-114 0 ~-114 gray_stained_glass

function missilewars:practice/basic_area

forceload remove ~-200 ~-200 ~-100 ~200
forceload remove ~-100 ~-200 ~0 ~200
forceload remove ~0 ~-200 ~100 ~200
forceload remove ~100 ~-200 ~200 ~200