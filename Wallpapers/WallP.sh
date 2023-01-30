hours=$(date +"%H")
minutes=$(date +"%M")
seconds=$(date +"%S")
echo $hours
if(($hours>=8))&&(($hours<11));then
  exec feh --bg-scale $HOME/Wallpapers/LandPaper_0.png
fi
if(($hours>=11))&&(($hours<13));then
  exec feh --bg-scale $HOME/Wallpapers/LandPaper_1.png
fi
if(($hours>=13))&&(($hours<15));then
  exec feh --bg-scale $HOME/Wallpapers/LandPaper_2.png
fi
if(($hours>=15))&&(($hours<19));then
  exec feh --bg-scale $HOME/Wallpapers/LandPaper_3.png
fi
if(($hours>=19))&&(($hours<21));then
  exec feh --bg-scale $HOME/Wallpapers/LandPaper_4.png
fi
if(($hours>=21))&&(($hours<=22))||(($hours==00));then
  exec feh --bg-scale $HOME/Wallpapers/LandPaper_5.png
fi
if(($hours>=1))&&(($hours<3));then
  exec feh --bg-scale $HOME/Wallpapers/LandPaper_6.png
fi
if(($hours>=3))&&(($hours<6));then
  exec feh --bg-scale $HOME/Wallpapers/LandPaper_7.png
fi
if(($hours>=6))&&(($hours<8));then
  exec feh --bg-scale $HOME/Wallpapers/LandPaper_8.png
fi
