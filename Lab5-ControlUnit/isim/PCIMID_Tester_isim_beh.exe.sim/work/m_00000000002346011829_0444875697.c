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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Lab5-ControlUnit/Instruction_Decoder.v";
static unsigned int ng1[] = {1112U, 0U};
static unsigned int ng2[] = {17U, 0U};
static unsigned int ng3[] = {1624U, 0U};
static unsigned int ng4[] = {1104U, 0U};
static unsigned int ng5[] = {1360U, 0U};
static unsigned int ng6[] = {1986U, 0U};
static unsigned int ng7[] = {99U, 0U};
static unsigned int ng8[] = {1984U, 0U};
static unsigned int ng9[] = {262U, 0U};



static void Always_19_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1548);
    *((int *)t2) = 1;
    t3 = (t0 + 1380);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(19, ng0);

LAB5:    xsi_set_current_line(20, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 11, t4, 11);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 11, t2, 11);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 11, t2, 11);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 11, t2, 11);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 11, t2, 11);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 11, t2, 11);
    if (t6 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(22, ng0);

LAB20:    xsi_set_current_line(33, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 828);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 9, 0LL);
    goto LAB19;

LAB9:    xsi_set_current_line(35, ng0);

LAB21:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 828);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 9, 0LL);
    goto LAB19;

LAB11:    xsi_set_current_line(48, ng0);

LAB22:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 828);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 9, 0LL);
    goto LAB19;

LAB13:    xsi_set_current_line(61, ng0);

LAB23:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 828);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 9, 0LL);
    goto LAB19;

LAB15:    xsi_set_current_line(75, ng0);

LAB24:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 828);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 9, 0LL);
    goto LAB19;

LAB17:    xsi_set_current_line(89, ng0);

LAB25:    xsi_set_current_line(100, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 828);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 9, 0LL);
    goto LAB19;

}


extern void work_m_00000000002346011829_0444875697_init()
{
	static char *pe[] = {(void *)Always_19_0};
	xsi_register_didat("work_m_00000000002346011829_0444875697", "isim/PCIMID_Tester_isim_beh.exe.sim/work/m_00000000002346011829_0444875697.didat");
	xsi_register_executes(pe);
}
