apple() {
    APPLEX=$[( $RANDOM % ( $[ $AREAMAXX - $AREAMINX ] + 1 ) ) + $AREAMINX ]
    APPLEY=$[( $RANDOM % ( $[ $AREAMAXY - $AREAMINY ] + 1 ) ) + $AREAMINY ]
}