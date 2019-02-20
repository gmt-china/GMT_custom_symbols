#!/bin/bash
ps=plot_diy_custom_symbols.ps
gmt psxy -R0/10/-2/10 -JX10c/5c -T -K > $ps
# 绘制城市符号
echo 1 1 | gmt psxy -R -J -Skcity/1 -W0.6p -K -O >> $ps
echo 1 -0.5 1 | gmt pstext -R -J -F+f8p -K -O >> $ps
# 绘制指北针符号,第三个参数为顺时针旋转角度
echo 2 1 0 | gmt psxy -R -J -Skcompass/1 -W0.6p -K -O >> $ps
echo 2 -0.5 2 | gmt pstext -R -J -F+f8p -K -O >> $ps
# 绘制应力解除符号,第三个参数为顺时针旋转角度
echo 3 1 45 | gmt psxy -R -J -Skstress_relief/1 -W1p -K -O >> $ps
echo 3 -0.5 3 | gmt pstext -R -J -F+f8p -K -O >> $ps
# 绘制水压致裂符号,第三个参数为顺时针旋转角度
echo 4 1 135 | gmt psxy -R -J -Skhydra_fract/1 -W1p -K -O >> $ps
echo 4 -0.5 4 | gmt pstext -R -J -F+f8p -K -O >> $ps
# 绘制钻孔崩落符号,第三个参数为顺时针旋转角度
echo 5 1 45 | gmt psxy -R -J -Skborehole_collapse/1 -W1p -K -O >> $ps
echo 5 -0.5 5 | gmt pstext -R -J -F+f8p -K -O >> $ps
# 绘制断层滑动符号,第三个参数为顺时针旋转角度
echo 6 1 0  | gmt psxy -R -J -Skfault_slip/1 -W1p -K -O >> $ps
echo 6 -0.5 6 | gmt pstext -R -J -F+f8p -K -O >> $ps
# 绘制震源机制符号,第三个参数为顺时针旋转角度
echo 7 1 135 | gmt psxy -R -J -Skfocal_mec/1 -W1p -K -O >> $ps
echo 7 -0.5 7 | gmt pstext -R -J -F+f8p -K -O >> $ps
# 绘制钻孔槽符号,第三个参数为顺时针旋转角度
echo 8 1 45 | gmt psxy -R -J -SkBS/1 -W1p -K -O >> $ps
echo 8 -0.5 8 | gmt pstext -R -J -F+f8p -K -O >> $ps
# 绘制钻孔诱发张裂隙符号,第三个参数为顺时针旋转角度
echo 9 1 135 | gmt psxy -R -J -SkDIF/1 -W1p -K -O >> $ps
echo 9 -0.5 9 | gmt pstext -R -J -F+f8p -K -O >> $ps
gmt psxy -R -J -T -O >> $ps
gmt psconvert -Tg -A -P $ps -Z
rm -rf gmt.*
