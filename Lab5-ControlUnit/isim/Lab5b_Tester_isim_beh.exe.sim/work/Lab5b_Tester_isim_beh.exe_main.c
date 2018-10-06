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
    work_m_00000000000455647452_2123150820_init();
    work_m_00000000002205860423_1957175458_init();
    work_m_00000000001520489530_4033376979_init();
    work_m_00000000003550366460_0526737933_init();
    work_m_00000000002569932639_0501244816_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002569932639_0501244816");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
