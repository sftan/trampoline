/*
 * Expiry points of schedule table $SCHEDTABLE_NAME$ 
 */
$EXPIRY_POINTS$

tpl_schedtable_static stat_$SCHEDTABLE$ = {
    {   /* static time object part */
        /* counter          */  $COUNTER$,
        /* expire function  */  tpl_process_schedtable
    },
    /* expiry points        */  $EXPIRY_TABLE$,
    /* expiry points count  */  $EXPIRY_TABLE_SIZE$,
    /* sync strategy        */  $SYNC_STRATEGY$,
    /* periodic             */  $PERIODIC$
};

tpl_schedule_table $SCHEDTABLE$ = {
    {   /* dynamic time object part */
        /* ptr to the static part   */  (tpl_time_obj_static *)&stat_$SCHEDTABLE$,
        /* next time object         */  NULL,
        /* prev time object         */  NULL,
        /* cycle                    */  0,
        /* date                     */  $SCHEDTABLE_DATE$,
        /* state of the time object */  $SCHEDTABLE_STATE$
    },
    /* next schedule table          */  NULL,
    /* current expiry point         */  0,
    /* sync to global time          */  FALSE,
    /* offset to global time        */  0,
    /* offset to reduce             */  0
};