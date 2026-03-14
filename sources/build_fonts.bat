@echo off

python3 -m fontmake -i -a -o ttf -m Terminalia.designspace
python3 -m fontmake -i -a -o otf -m Terminalia.designspace
python3 -m fontmake -a -o variable -m Terminalia.designspace

python fix-dsig.py .\autohinted\instance_ttf\Terminalia-Light.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Terminalia-Regular.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Terminalia-Bold.ttf |
python fix-dsig.py .\instance_otf\Terminalia-Light.otf |
python fix-dsig.py .\instance_otf\Terminalia-Regular.otf |
python fix-dsig.py .\instance_otf\Terminalia-Bold.otf |

python fix-dsig.py .\variable_ttf\Terminalia-VF.ttf |

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\Terminalia-VF.ttf ..\fonts\vf\Terminalia[wght].ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit