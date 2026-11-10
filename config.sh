# board variables
    FIRST_ROW=1                              
    FIRST_COL=1                             
    LAST_COL=60                             
    LAST_ROW=25 
    
    WALL_CHAR="#"
    APPLE_CHAR='Q'
    SNAKE_CHAR='@'

    SNAKE_SIZE=3                             
    DELAY=0.2
    RESTART_DELAY=3

    AREA_MAX_X=$(( $LAST_COL - 1 ))           
    AREA_MIN_X=$(( $FIRST_COL + 1 ))          
    AREA_MAX_Y=$(( $LAST_ROW - 1 ))           
    AREA_MIN_Y=$(( $FIRST_ROW + 1))           
    ROWS=`tput lines`                       
    ORIGIN_X=$(( $LAST_COL / 2 ))            
    ORIGIN_Y=$(( $LAST_ROW / 2 ))             
    POS_X=$ORIGIN_X                           
    POS_Y=$ORIGIN_Y     

    SCORE=0              
    DIRECTION="w"   
    QUIT_FLAG=0    

# Pad out arrays
    ZEROES=`echo |awk '{printf("%0"'"$SNAKE_SIZE"'"d\n",$1)}' | sed 's/0/0 /g'`
    LAST_POS_X=( $ZEROES )                   
    LAST_POS_Y=( $ZEROES )  