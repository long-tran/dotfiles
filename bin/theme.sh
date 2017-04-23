## Base16 Shell color themes.
#possible themes: 3024, apathy, ashes, atelierdune, atelierforest, atelierhearth,
#atelierseaside, bespin, brewer, chalk, codeschool, colors, default, eighties, 
#embers, flat, google, grayscale, greenscreen, harmonic16, isotope, londontube,
#marrakesh, mocha, monokai, ocean, paraiso, pop (dark only), railscasts, shapesifter,
#solarized, summerfruit, tomorrow, twilight
if [[ $# -eq 0 ]] ; then
    echo 'Available theme:'
    echo '3024, apathy, ashes, atelierdune, atelierforest, atelierhearth,'
    echo 'atelierseaside, bespin, brewer, chalk, codeschool, colors, default, eighties,'
    echo 'embers, flat, google, grayscale, greenscreen, harmonic16, isotope, londontube,'
    echo 'marrakesh, mocha, monokai, ocean, paraiso, pop (dark only), railscasts, shapesifter,'
    echo 'solarized, summerfruit, tomorrow, twilight'
    exit 0
fi
theme="$1"
#Possible variants: dark and light
shade="dark"
BASE16_SHELL="/usr/share/zsh/scripts/base16-shell/base16-$theme.$shade.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
