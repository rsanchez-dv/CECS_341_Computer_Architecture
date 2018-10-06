/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000124112270_3674772129_init();
    work_m_00000000001676152584_2461264495_init();
    work_m_00000000002079161855_1967016292_init();
    work_m_00000000002472718786_3717951388_init();
    work_m_00000000001352726208_4231019343_init();
    work_m_00000000000830407457_1323274903_init();
    work_m_00000000001488836521_3937591914_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001488836521_3937591914");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
